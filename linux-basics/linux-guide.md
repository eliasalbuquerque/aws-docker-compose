# Basic Linux and Shell Script commands


- [Commands:](#commands)
- [Additional useful commands:](#additional-useful-commands)
- [Variables:](#variables)
- [Summary table of the commands:](#summary-table-of-the-commands)



## Commands:

- `mkdir`: The `mkdir` command is used to create a new directory. The syntax is `mkdir [directory_name]`. For example, `mkdir new_directory` will create a directory named "new_directory".

- `mv`: The `mv` command is used to move or rename files and directories. The syntax for moving files is `mv [source_file] [destination_directory]`, and for renaming files, it's `mv [old_filename] [new_filename]`.

- `grep`: The `grep` command is used to search for a specific pattern in one or more files. The syntax is `grep [pattern] [file...]`. For example, `grep 'hello' file.txt` will search for the word 'hello' in file.txt.

- `cat`: The `cat` command is used to display the contents of a file. The syntax is `cat [file]`. For example, `cat file.txt` will display the contents of file.txt.

- `chmod +x`: The `chmod +x` command is used to make a file executable. The syntax is `chmod +x [file]`. For example, `chmod +x script.sh` will make the script.sh file executable.

## Additional useful commands:

- `ls`: The `ls` command is used to list the contents of a directory.
- `cd`: The `cd` command is used to change the current directory.
- `rm`: The `rm` command is used to remove files or directories.
- `touch`: The `touch` command is used to create a new empty file.

## Variables:

In shell scripts, you can use variables to store and manipulate data. To declare a variable, you simply provide the variable name and assign it a value with the `=` operator, like so: `variable_name=value`. To access the value stored in a variable, prefix the variable name with the `$` symbol, like so: `$variable_name`.

## Summary table of the commands:

| Command | Purpose |
| --- | --- |
| `mkdir` | Create a new directory |
| `mv` | Move or rename files and directories |
| `grep` | Search for a specific pattern in files |
| `cat` | Display the contents of a file |
| `chmod +x` | Make a file executable |
| `ls` | List the contents of a directory |
| `cd` | Change the current directory |
| `rm` | Remove files or directories |
| `touch` | Create a new empty file |
