# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc file. It enables syntax highlighting, sets lines numbers of left side of window, automatically indents lines based on previous indentations,displays current cursor position, sets color scheme, and sets options for MakeFile filetype (disables use of tabs for indentation,sets width of tab to 8,and sets behavoir of tab key to insert real tabs rather than spaces.
## .bashrc custom
This is my custom configuration of bashrc. This Script adds useful environment variables, aliases,and functions to the bash shell environment. 
Used Aliases:
cdd: changes the current directory to the parent directory.
lsa: lists all files and directories in the current directory, including hidden files.
lsl: lists all files and directories in the current directory in long format.
lsal: lists all files and directories in the current directory in long format, including hidden files.
targz: calls the targzfunc function (see below).
untar: calls the untarfunc function (see below).
cselab: sets up an SSH connection to a remote server with a specific IP address and port number. The ??? should be replaced with the appropriate IP address.
trash: moves a file to a ~/.TRASH directory instead of using rm.
rmtrash: removes all files and directories in the ~/.TRASH directory.
Used Functions :
targzfunc: creates a compressed tar archive of a directory. The name of the archive is based on the name of the directory. The function takes one argument, which is the name of the directory to archive.
untarfunc: extracts the contents of a tar archive into the current directory. The name of the archive is passed as an argument to the function.
## .bin/linux.sh
Checks if operating system is linux and if not an error is appended to linuxsetup.log. Creates a directory name trash in home directory if not [reviously defined, as well as changes any .vimrc in the home directory to a backup file, and appends that message to the log file. It then overwrites etc/vimrc to .vimrc in the home directory.
## ./bin/cleanup.sh
"cleans up" what was done while running linux.sh. removes .vimrc and the .TRASH directory from home directory.
