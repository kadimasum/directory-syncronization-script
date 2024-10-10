# Directory Synchronization Script

## Overview

This Bash script synchronizes the contents of a source directory to a destination directory using the `rsync` command. It ensures that the specified source and destination paths are valid directories before performing the synchronization. The script helps to copy or update the contents of one directory to another, making it useful for backup or mirroring purposes.

## Features

- **Directory validation**: Ensures both the source and destination paths are valid directories.
- **Synchronization**: Uses `rsync` to recursively copy all files and directories from the source to the destination.
- **Error handling**: Displays appropriate error messages if directories are missing or invalid.

## Prerequisites

- **Bash**: The script is written for the Bash shell and should be run in a compatible terminal.
- **rsync**: This command must be installed on your system to allow file synchronization.

## How to Use

1. **Script Execution:**

   Run the script by providing two arguments: the source directory and the destination directory.
   ```bash
   ./script.sh <source_directory> <destination_directory>
   ```

2. **Parameters:**

   - `<source_directory>`: The path of the directory you want to synchronize from (the source).
   - `<destination_directory>`: The path of the directory where the source content should be synchronized to (the destination).

### Example Usage:

```bash
./script.sh /home/user/documents /backup/documents
```

This command synchronizes the contents of `/home/user/documents` to `/backup/documents`.

## Script Breakdown

1. **Arguments Handling:**
   - The script takes two arguments:
     - `$1`: The source directory.
     - `$2`: The destination directory.
   
2. **Validation:**
   - Checks if the source and destination directories are provided.
   - Verifies that both arguments are valid directories using the `-d` flag (which checks if a path is a directory).
   
3. **Synchronization:**
   - If both directories are valid, the script runs the `rsync` command with the `-r` flag to recursively copy all files and directories from the source to the destination.

4. **Success Message:**
   - After successful synchronization, the script displays a confirmation message.

## Error Handling

- **Missing Arguments**: If either the source or destination directory is missing, the script will output an error and exit.
- **Invalid Directory**: If the provided source or destination path is not a directory, the script will display an error asking for valid directories.
  
### Error Messages:
- **"Error: Source directory missing. Kindly provide a source directory"**
- **"Error: Destination directory missing. Kindly provide a destination directory"**
- **"Error: Only directories allowed. Kindly provide valid arguments for source and destination directories"**

## License

This script is open-source and available under the MIT License.

---

### How to Run the Script

1. **Make the script executable:**
   ```bash
   chmod +x script.sh
   ```

2. **Run the script with source and destination directories:**
   ```bash
   ./script.sh /path/to/source /path/to/destination
   ```

