# Bitcoin Wallet Hash Extractor

**Tool for extracting hashes from Bitcoin wallet.dat files**
This repository provides a set of tools to quickly and automatically extract
encrypted master key (mkey) hashes from Bitcoin `wallet.dat` files, ready for use with cracking tools.

## 📋 Content
- **`bitcoin2john.py`** - Main Python script for converting wallet.dat to $bitcoin$ hash format
- **`Extract_hash.bat`** - Windows batch file that automates the processing of all .dat files in the folder
- Automatically generated log files (`all_hashes.txt`, `errors.txt`, `processed_files.txt`)

## ✨ Features
- Automatically processes all `.dat` wallets in the directory
- Extracts hashes only from encrypted wallets
- Support for standard Bitcoin wallets and some legacy variants
- Error handling with separate logging
- Optimized output (`$bitcoin$*...` format)
- Complete logging of operations performed and any errors

🚀 Usage

- Clone or download the repository
- Copy all your wallet.dat files to the same folder as your scripts
- Run the Extract_hash.bat file
- Wait for the process to complete

Once complete, you'll find:

all_hashes.txt → Contains all the extracted hashes (John-ready format)
errors.txt → List of wallets that generated errors
processed_files.txt → Complete list of processed files
