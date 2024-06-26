def replace_braces(file_path):
    # خواندن محتوای فایل
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # جایگزینی کاراکترها
    content = content.replace('"body"', 'body')
    content = content.replace('"author"', 'author')

    # نوشتن محتوای جدید به فایل
    with open(file_path, 'w', encoding='utf-8') as file:
        file.write(content)

    print(f"Replacements completed in {file_path}")

# آدرس فایل تکست خود را اینجا قرار دهید
file_path = 'C:/Users/Parsisor/Desktop/flutter-persian-fitness-main/bashgah/lib/text.txt'
replace_braces(file_path)
