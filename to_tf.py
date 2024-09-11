from typing import Dict, Any, List

def to_hcl(data: Dict[str, Any], indent_level: int = 0) -> List[str]:
    """Convert a Python dictionary to HCL format with proper indentation."""
    hcl_lines = []
    indent = '    ' * indent_level  # Define indentation based on level

    for key, value in data.items():
        if isinstance(value, dict):
            hcl_lines.append(f'{indent}{key} {{')
            hcl_lines.extend(to_hcl(value, indent_level + 1))
            hcl_lines.append(f'{indent}}}')
        elif isinstance(value, list):
            hcl_lines.append(f'{indent}{key} = [')
            for item in value:
                if isinstance(item, dict):
                    hcl_lines.append(f'{indent}  {{')
                    hcl_lines.extend(to_hcl(item, indent_level + 2))
                    hcl_lines.append(f'{indent}  }}')
                else:
                    hcl_lines.append(f'{indent}  "{item}"')
            hcl_lines.append(f'{indent}]')
        else:
            hcl_lines.append(f'{indent}{key} = "{value}"')

    return hcl_lines