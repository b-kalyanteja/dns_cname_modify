import os
import hcl
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QTextEdit, QLabel, QVBoxLayout, QWidget, \
    QFileDialog, QLineEdit, QMessageBox


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Terraform CNAME Modifier")
        self.setGeometry(100, 100, 900, 700)

        # Widgets
        self.text_widget = QTextEdit(self)
        self.text_widget.setReadOnly(True)

        self.label_widget = QLabel("Enter CNAME filter:", self)
        self.name_input = QLineEdit(self)

        self.load_file_btn = QPushButton("Load .tf File", self)
        self.load_file_btn.clicked.connect(self.load_file)

        self.extract_cnames_btn = QPushButton("Extract CNAMEs", self)
        self.extract_cnames_btn.clicked.connect(self.extract_cnames)

        self.save_btn = QPushButton("Save Modified File", self)
        self.save_btn.clicked.connect(self.save_file)

        # Layout
        layout = QVBoxLayout()
        layout.addWidget(self.load_file_btn)
        layout.addWidget(self.text_widget)
        layout.addWidget(self.label_widget)
        layout.addWidget(self.name_input)
        layout.addWidget(self.extract_cnames_btn)
        layout.addWidget(self.save_btn)

        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

        # File path and content variables
        self.file_path = ""
        self.file_content = ""
        self.parsed_data = None
        self.aliases = []  # Stores the alias objects

    def load_file(self):
        options = QFileDialog.Options()
        file_path, _ = QFileDialog.getOpenFileName(self, "Open .tf File", "", "Terraform Files (*.tf);;All Files (*)",
                                                   options=options)
        if file_path:
            self.file_path = file_path
            with open(file_path, 'r') as f:
                self.file_content = f.read()

            # Parse the file using pyhcl
            try:
                with open(file_path, 'r') as tf_file:
                    self.parsed_data = hcl.load(tf_file)
                self.text_widget.setText(self.file_content)
            except Exception as e:
                QMessageBox.critical(self, "Error", f"Failed to parse the file: {str(e)}")

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

        cname_filter = self.name_input.text()
        records_list = self.parsed_data.get('resource', {}).get('aws_route53_record', [])

        # List to store modified records (without CNAMEs that match the filter)
        modified_records = []
        self.aliases = []  # Reset the alias list

        # Iterate over all records
        for resource in records_list:
            for name, details in resource.items():
                # Check if type is CNAME and if the name contains the filter
                if details.get('type') == 'CNAME' and cname_filter in details.get('name', ''):
                    # Create an alias object with the specified format
                    alias_object = {
                        'name': details['name'],
                        'type': 'A',
                        'alias': {
                            'name': details['records'][0],  # Assuming one record per resource
                            'zone_id': 'module.r53_zone_ids.alb.euw1',
                            'evaluate_target_health': False
                        }
                    }
                    self.aliases.append(alias_object)
                else:
                    modified_records.append(resource)

        # Replace the original records list with the modified one
        self.parsed_data['resource']['aws_route53_record'] = modified_records

        # Show the modified records and alias records in the text widget
        display_content = "Modified Records:\n" + str(modified_records) + "\n\n" + "Alias Records:\n" + str(
            self.aliases)
        self.text_widget.setText(display_content)

    def save_file(self):
        if not self.file_content:
            QMessageBox.warning(self, "No Content", "There is no modified content to save.")
            return

        # Append the aliases to the original data
        self.parsed_data['resource']['aws_route53_record'].extend(self.aliases)

        # Convert the parsed data back to string format (simple representation)
        modified_content = str(self.parsed_data)

        # Save to new file on desktop
        desktop_path = os.path.join(os.path.join(os.environ['HOME']), 'Desktop')
        save_path = os.path.join(desktop_path, os.path.basename(self.file_path).replace('.tf', '_new.tf'))

        with open(save_path, 'w') as f:
            f.write(modified_content)

        QMessageBox.information(self, "File Saved", f"Modified file saved to: {save_path}")


if __name__ == '__main__':
    app = QApplication([])
    window = MainWindow()
    window.show()
    app.exec_()

#changes to be made in office mac. add the CHAT GPT logic to identify AWS  servie type