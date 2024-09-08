# This is a python project for importing .tf files and altering the CNAMES to Aliases
import os
import json

from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QTextEdit, QLabel, QVBoxLayout, QWidget, QFileDialog, QLineEdit, QHBoxLayout, QMessageBox
from PyQt5.QtCore import Qt

import os
import json
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QTextEdit, QLabel, QVBoxLayout, QWidget, \
    QFileDialog, QLineEdit, QHBoxLayout, QMessageBox
from PyQt5.QtCore import Qt


# main class to have widget in the application window
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Cname to Alias ")
        self.setGeometry(100, 100, 900, 700)

        # ------Widgets ------
        #
        self.text_widget = QTextEdit(self)
        self.text_widget.setReadOnly(True)
        self.text_widget.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOn)

        self.label_widget = QLabel("Identifier:", self)
        self.name_input = QLineEdit(self)

        self.load_file_btn = QPushButton("Load .tf File", self)
        self.load_file_btn.clicked.connect(self.load_file)

        self.modify_cnames_btn = QPushButton("Modify CNAMEs", self)
        self.modify_cnames_btn.clicked.connect(self.modify_cnames)

        self.save_btn = QPushButton("Save Modified File", self)
        self.save_btn.clicked.connect(self.save_file)

        self.info_button = QPushButton("Info", self)
        self.info_button.setFixedSize(60, 30)  # Small button size
        self.info_button.clicked.connect(self.show_info)

        # Layout
        layout = QVBoxLayout()
        layout.addWidget(self.load_file_btn)
        layout.addWidget(self.text_widget)
        layout.addWidget(self.label_widget)
        layout.addWidget(self.name_input)
        layout.addWidget(self.modify_cnames_btn)
        layout.addWidget(self.save_btn)
        layout.addWidget(self.info_button)

        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

        # File path and content variables
        self.file_path = ""
        self.file_content = ""


    # ------ DEFINITIONS OF FUNTION ---------

    # pop-up info
    def show_info(self):
        QMessageBox.information(self, "Info", "This is alph version of the Software Developed by Kalyan for client Jagadeesh")

    def load_file(self):
        options = QFileDialog.Options()
        file_path, _ = QFileDialog.getOpenFileName(self, "Open only terraform File", "", "Terraform Files (*.tf);;All Files (*)",
                                                   options=options)
        if file_path:
            self.file_path = file_path
            with open(file_path, 'r') as f:
                self.file_content = f.read()
                self.text_widget.setText(self.file_content)

            # Clone the file to desktop
            desktop_path = os.path.join(os.path.join(os.environ['HOME']), 'Desktop')
            new_file_path = os.path.join(desktop_path, os.path.basename(file_path).replace('.tf', '_new.tf'))
            with open(new_file_path, 'w') as new_file:
                new_file.write(self.file_content)
            QMessageBox.information(self, "File Cloned", f"File cloned to: {new_file_path}")



    def extract_cnames(self):
        if not self.parsed_data:
            QMessageBox.warning(self, "No File Loaded", "Please load a .tf file first.")
            return

        cname_filter = self.name_input.text()  # Get the filter text from the input
        records_list = self.parsed_data.get('resource', {}).get('aws_route53_record', [])

        # Initialize lists
        modified_records = []  # To store records without CNAMEs that match the filter
        self.aliases = []  # Reset the alias list

        # Iterate over all records
        for resource in records_list:
            for name, details in resource.items():
                # Check if type is CNAME and if the name contains the filter
                if details.get('type') == 'CNAME' and cname_filter in details.get('name', ''):
                    # Move the CNAME to Aliases list in the specified format
                    alias_object = {
                        'name': details['name'],  # Same name as the CNAME
                        'type': 'ALIAS',
                        'alias': {
                            'name': details['records'][0],  # Assuming first record in 'records' array
                            'zone_id': 'module.r53_zone_ids.alb.euw1',
                            'evaluate_target_health': False
                        }
                    }
                    self.aliases.append(alias_object)
                else:
                    modified_records.append(resource)  # Keep other records in modified list

        # Replace the original records list with the modified one (without filtered CNAMEs)
        self.parsed_data['resource']['aws_route53_record'] = modified_records

        # Show the modified records and alias records in the text widget
        display_content = (
                "Modified Records:\n" + str(modified_records) +
                "\n\nAlias Records:\n" + str(self.aliases)
        )
        self.text_widget.setText(display_content)

    def alter_aliases(self):
        if not self.aliases:
            QMessageBox.warning(self, "No Aliases", "Please extract CNAMEs first.")
            return

        # Iterate through the aliases list and modify each alias
        for alias in self.aliases:
            # Here, you can apply whatever changes are needed to the alias records.
            # Example: Alter the alias name
            alias['alias']['name'] = alias['alias']['name'].replace(".com", ".altered.com")  # Example modification

            # Example: Alter the zone_id
            alias['alias']['zone_id'] = "module.r53_zone_ids.altered.euw1"  # Example modification

        # Show the modified alias records
        display_content = "Altered Alias Records:\n" + str(self.aliases)
        self.text_widget.setText(display_content)

    def save_file(self):
        if not self.file_content:
            QMessageBox.warning(self, "No Content", "There is no modified content to save.")
            return

        save_path, _ = QFileDialog.getSaveFileName(self, "Save Modified File", "",
                                                   "Terraform Files (*.tf);;All Files (*)")
        if save_path:
            with open(save_path, 'w') as f:
                f.write(self.file_content)
            QMessageBox.information(self, "File Saved", f"Modified file saved to: {save_path}")


if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec_()
