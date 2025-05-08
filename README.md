# Bash Aliases Script

Hey! I created this script that adds some useful shortcuts for your terminal. It makes coding easier and faster.

## What It Does

- Adds cool shortcuts for common commands
- Makes navigating your folders quicker
- Safe to use—prevents accidents like deleting files

## How to Install

1. Save this as `setup_aliases.sh`.
2. Make it executable with: 
   ```bash
   chmod +x setup_aliases.sh
   ```
3. Run the script:
   ```bash
   ./setup_aliases.sh
   ```

## Cool Commands Added

Here's a description of all the aliases you will get:

### File Management
- **`l`**: `ls -lah`  
  Lists files with details, including hidden files, in a human-readable format.
  
- **`ll`**: `ls -l`  
  Shows a detailed list of files without hidden ones.

- **`la`**: `ls -a`  
  Lists all files, including hidden files.

- **`ls`**: `ls --color=auto`  
  Displays colors in the output for better visibility.

### Navigation
- **`..`**: `cd ..`  
  Moves up one directory.

- **`...`**: `cd ../..`  
  Moves up two directories.

- **`~`**: `cd ~`  
  Takes you back to your home directory.

- **`mkcd foldername`**:  
  A function to create a new directory and immediately enter it.

### Sudo Aliases
- **`pls`**: `sudo`  
  A casual way to use sudo.

- **`plz`**: `sudo`  
  Another way to use sudo—it’s just for fun!

### Git Shortcuts
- **`gs`**: `git status`  
  Shows the status of the current git repository.

- **`ga`**: `git add`  
  Stages changes for commit.

- **`gc`**: `git commit`  
  Commits staged changes.

- **`gp`**: `git pull`  
  Pulls updates from a remote repository.

- **`yeet`**: `git push`  
  Pushes your code to the remote repository with a fun name.

- **`yoink`**: `git pull`  
  Also pulls changes with a playful name.

### Safety Features
- **`rm`**: `rm -i`  
  Prompts for confirmation before deleting files.

- **`cp`**: `cp -i`  
  Prompts for confirmation before overwriting files when copying.

- **`mv`**: `mv -i`  
  Prompts for confirmation before overwriting files when moving.

### System Info
- **`h`**: `history`  
  Displays command history.

- **`p`**: `ps aux`  
  Shows all running processes.

- **`df`**: `df -h`  
  Displays disk space usage in a human-readable format.

- **`free`**: `free -h`  
  Displays memory usage in a human-readable format.

- **`update`**: `sudo apt update && sudo apt upgrade -y`  
  Updates the system's packages.

### File Extraction
- **`extract`**:  
  A function to extract different types of archive files (like `.zip`, `.tar.gz`, etc.) automatically. Just run `extract filename`.

## Backup

The script makes a backup of your `.bashrc` file just in case anything goes wrong.

## Customizing

You can add more of your own shortcuts. Open `~/.bash_aliases` and add your commands:
```bash
alias mycommand='some long command'
```

Feel free to use it and make your terminal experience better! 
