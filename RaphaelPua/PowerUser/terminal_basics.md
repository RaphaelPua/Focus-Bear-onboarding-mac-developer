# Terminal Basics

## Navigation & Basic Shell Commands

1. pwd - Shows full file path

- "pwd" displays the full path of the directory I am currently working in.

2. ls — List Files

- "ls" displays the files and folders inside the current directory.

3. cd — Change Directory

- "cd" allows me to move into another directory.
- I can move up one directory using: cd ..
- I can return to my home directory using: cd ~

4. mkdir — Make Directory/Folder

- mkdir creates a new directory.
- Ex: mkdir terminal-practice (This creates a folder called terminal-practice.)
- I can also create nested directories using: mkdir -p projects/javascript

5. touch — Create a File

- touch can be used to create an empty file.
- HOW: touch < filename > 
- Ex: touch notes.md (This creates an empty Markdown file called notes.md.)

6. cp — Copy Files

- cp copies a file or directory to another location.
- HOW: cp source destination
- Ex: cp notes.md backup.md (This creates a copy of notes.md called backup.md.)

7. mv — Move or Rename Files

- mv can be used to move or rename a file or folder.
- HOW: mv old_name new_name
- Ex: mv notes.md terminal-notes.md (This renames notes.md to terminal-notes.md.)

8. rm — Remove Files

- rm removes a file.
- HOW: rm filename
- Ex; rm temporary.txt (This deletes temporary.txt.)
- Need to be careful with "rm" because files deleted through Terminal are not necessarily moved to the Trash and may be difficult to recover.

9. cat — Display File Contents

- cat displays the contents of a text file directly in Terminal.
- HOW: cat filename
- Ex: cat notes.md (This is useful for quickly checking the contents of a file without opening it in a text editor.)
find

10. find — Search for Files and Directories

- find searches for files and directories.
- HOW: find . -name "filename"
- HOW: find . -print (Shows the whole structure)
- Ex: find . -name "*.md" (This searches the current directory and its subdirectories for Markdown files.)

