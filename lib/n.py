import os
import shutil

# Define the 'Others' directory
others_directory = r'C:\Users\Parsisor\Downloads\Others'

# Create a dictionary to map file extensions to folder names
file_types = {
    'Images': ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.webp', '.jfif', '.avif'],
    'Videos': ['.mp4', '.mkv', '.flv', '.avi', '.mov', '.webm'],
    'Documents': ['.pdf', '.docx', '.txt', '.xlsx', '.pptx', '.html', '.url'],
    'Music': ['.mp3', '.wav', '.aac', '.flac', '.m4a'],
    'Archives': ['.zip', '.rar', '.tar', '.gz', '.7z', '.xz'],
    'Scripts': ['.py', '.js', '.sh', '.bat', '.rb', '.dart'],
    'Exe': ['.exe', '.msi'],
    'PSDs': ['.psd'],
    'Illustrator': ['.ai', '.eps'],
    'Fonts': ['.ttf', '.otf', '.woff', '.woff2'],
    'SVGs': ['.svg'],
    'Figma': ['.fig'],
    'ISO': ['.iso'],
    'ASE': ['.ase'],
    'JSON': ['.json'],
    'AVIF': ['.avif'],
}

# Create folders if they do not exist
for folder in file_types.keys():
    folder_path = os.path.join(others_directory, folder)
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

# Scan through files in the 'Others' directory
for filename in os.listdir(others_directory):
    file_path = os.path.join(others_directory, filename)
    if os.path.isfile(file_path):
        file_ext = os.path.splitext(filename)[1].lower()
        moved = False
        for folder, extensions in file_types.items():
            if file_ext in extensions:
                shutil.move(file_path, os.path.join(others_directory, folder, filename))
                moved = True
                break
        
        # If file type is not found in the predefined types, keep it in 'Others' folder
        if not moved:
            try:
                print(f"No folder found for {filename}, keeping it in 'Others'.")
            except UnicodeEncodeError:
                print(f"No folder found for a file, keeping it in 'Others'.")

print("Files have been organized successfully.")
