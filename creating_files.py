import os

# Prompt for the source file name
source_file = input("Enter the source file name: ")

# Prompt for the number of copies to create
number_of_copies = int(input("Enter the number of copies: "))

# Loop to create n number of copies
for i in range(number_of_copies):
    dest_file = f(i + 1)
    with open(source_file, "rb") as src, open(dest_file, "wb") as dst:
        dst.write(src.read())
