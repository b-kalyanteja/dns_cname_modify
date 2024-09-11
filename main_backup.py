import os
import json
import pprint

from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QTextEdit, QLabel, QVBoxLayout, QWidget, \
    QFileDialog, QLineEdit, QHBoxLayout, QMessageBox, QComboBox
from PyQt5.QtCore import Qt
import platform
import hcl2
import sys
import time
from dns_verify import get_service


# main class to have widget in the application window
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Cname to Alias ")
        self.setGeometry(100, 100, 900, 700)

        # ------Widgets ------

        self.text_widget = QTextEdit(self)
        self.text_widget.setReadOnly(True)
        self.text_widget.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOn)

        self.label_widget_env = QLabel("Environemnt:", self)
        self.env_input = QLineEdit(self)

        self.label_widget_zone = QLabel("Zone:", self)
        self.zone_input = QComboBox(self)
        self.zone_input.addItems(["euw1", "useast1", "useast2","eue2"])


        self.load_file_btn = QPushButton("Load .tf File", self)
        self.load_file_btn.clicked.connect(self.load_file)

        self.check_parse_btn = QPushButton("Parse data", self)
        self.check_parse_btn.clicked.connect(self.check_parse)

        self.move_cnames_btn = QPushButton(" Move Cnames to Aliases", self)
        self.move_cnames_btn.clicked.connect(self.move_cnames)

        self.modify_cnames_btn = QPushButton("Modify CNAME to Alias format (*default zone id)", self)
        self.modify_cnames_btn.clicked.connect(self.modify_cnames)

        self.modify_zone_btn = QPushButton("Correct zone Id's", self)
        self.modify_zone_btn.clicked.connect(self.modify_zone)

        self.save_btn = QPushButton("Save Modified File", self)
        self.save_btn.clicked.connect(self.save_file)


        # Layout and adding widgets in layout
        layout = QVBoxLayout()
        layout.addWidget(self.load_file_btn)
        layout.addWidget(self.text_widget)
        layout.addWidget(self.label_widget_env)
        layout.addWidget(self.env_input)
        layout.addWidget(self.zone_input)
        layout.addWidget(self.check_parse_btn)
        layout.addWidget(self.move_cnames_btn)
        layout.addWidget(self.modify_cnames_btn)
        layout.addWidget(self.modify_zone_btn)
        layout.addWidget(self.save_btn)

        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

        # File path and content variables
        self.file_path = ""
        self.file_content = ""

    # ------ DEFINITIONS OF FUNCTIONS ---------


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
            desktop_path = self.get_desktop_path()
            new_file_path = os.path.join(desktop_path, os.path.basename(file_path).replace('.tf', '_new.tf'))
            with open(new_file_path, 'w') as new_file:
                new_file.write(self.file_content)
            QMessageBox.information(self, "File Cloned", f"File cloned to: {new_file_path}")

    def get_desktop_path(self):
        """Get the user's desktop path in a cross-platform manner."""
        if platform.system() == 'Windows':
            return os.path.join(os.environ['USERPROFILE'], 'Desktop')
        else:
            return os.path.join(os.environ['HOME'], 'Desktop')

# ------- Mian Functions -----#
    def move_cnames(self):
        pass

    def check_parse(self):
        text_content = self.text_widget.toPlainText()

        try:
            # Parse the content as HCL
            self.parsed_data = hcl2.loads(text_content)
        except Exception as e:
            QMessageBox.warning(self, "Invalid Format", f"Failed to parse HCL content: {e}")
            self.parsed_data = None  # Reset parsed_data in case of error
            return

        # Convert parsed data to a string
        display_content = str(self.parsed_data)

        # Display the parsed data in the text widget
        self.text_widget.setText(display_content)
        print("Parsed Data:", self.parsed_data)

        # Extract module data
        modules = self.parsed_data.get('module', [])


        # Ensure we have modules to process
        if not modules:
            QMessageBox.warning(self, "No Modules Found", "No module data found in the parsed content.")
            return

        # Iterate over each module
        for module in modules:
            for module_name, module_data in module.items():
                # Get the records and aliases lists
                records_list = module_data.get('records', [])
                aliases_list = module_data.get('aliases', [])


                # Create a list to hold records that are not CNAME
                updated_records = []

                zone = self.zone_input.currentText()
                #print(f'Zone ID Value: {zone}')

                env = self.env_input.text()

                # Process each record
                for record in records_list:
                    if record.get('type') == 'CNAME' and env in record.get('name', ''):
                        # Move CNAME record to aliases list
                        print(record.get('name'))
                        type = record.get('records', [])[0]
                        shortcut = get_service(type)
                        alias_object = {
                            'name': record.get('name'),
                            'type': 'ALIAS',
                            'alias': {
                                'name': record.get('records', [])[0],  # Assuming one record per CNAME
                                'zone_id': f'module.r53_zone_ids.{shortcut}.{zone}',  # Replace with actual zone_id
                                'evaluate_target_health': False
                            }
                        }
                        aliases_list.append(alias_object)
                        print(alias_object)
                        #time.sleep(1)
                    else:
                        updated_records.append(record)
                        print("chosen record not matching")

                # Update the module data with modified lists
                module_data['records'] = updated_records
                module_data['aliases'] = aliases_list

        # Update the parsed data with modified modules
        self.parsed_data['module'] = modules

        # Convert the modified data back to a string (HCL format) for display
        # You may need a function to convert back to HCL if necessary
        display_content = pprint.pformat(self.parsed_data, indent=4)
        self.text_widget.setText(display_content)



    def modify_cnames(self):
        QMessageBox.warning(self, "Not defined", "yet to implement")
        return
        pass

    def modify_zone(self):
        QMessageBox.warning(self, "Not defined", "yet to implement")
        return
        pass

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
