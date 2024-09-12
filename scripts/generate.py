# Copyright © 2022 The OSRD Contributors
#
# SPDX-License-Identifier: LGPL-3.0-only

import pathlib
import json

def generate_json_structure(base_dir):
    structure = {}

    base_path = pathlib.Path(base_dir)
    for folder_path in base_path.iterdir():
    
        if folder_path.is_dir():
            images = []
            for file in folder_path.iterdir():
                if file.suffix in ['.png', '.jpg', 'jpeg']:
                    images.append(f"{folder_path.name}/{file.name}")
            
            # Check for category image existence (folder.png, folder.jpg or folder.jpeg)
            category_image = None
            for ext in ['.png', '.jpg', '.jpeg']:
                category_image_path = base_path / f"{folder_path.name}{ext}"
                if category_image_path.is_file():
                    category_image = category_image_path.name
                    break
            
            if not category_image:
                raise FileNotFoundError(f"Category image not found for folder '{folder_path.name}'")

            structure[folder_path.name] = {
                "category_image": category_image,
                "images": images
            }

    return structure

if __name__ == "__main__":

    base_dir = pathlib.Path(__file__).parent.parent / 'src'

    json_structure = generate_json_structure(base_dir)
    print(json.dumps(json_structure, indent=2))
