
# ⚡ bins

<div align="center">

[![GitHub stars](https://img.shields.io/github/stars/a0x14D/bins?style=for-the-badge)](https://github.com/a0x14D/bins/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/a0x14D/bins?style=for-the-badge)](https://github.com/a0x14D/bins/network)
[![GitHub issues](https://img.shields.io/github/issues/a0x14D/bins?style=for-the-badge)](https://github.com/a0x14D/bins/issues)
[![GitHub license](https://img.shields.io/github/license/a0x14D/bins?style=for-the-badge)](LICENSE) <!-- TODO: Add actual license file or specify license in metadata -->

**A personal collection of essential shell scripts and command-line utilities for enhanced productivity.**

</div>

## 📖 Overview

`bins` is a repository designed to host and easily install a collection of personal shell scripts and command-line tools. It provides a simple `install.sh` script to automate the process of making these utilities globally accessible from your terminal, streamlining your workflow and centralizing your most frequently used custom commands.

## ✨ Features

-   **Effortless Installation**: A single `install.sh` script automates the setup, making all tools available in your system's PATH.
-   **Centralized Utilities**: Keep all your essential command-line tools in one organized and version-controlled repository.
-   **Modular Structure**: Easily add new scripts to the `bin/` directory and re-run the installer to integrate them.
-   **System-Wide Accessibility**: Scripts are symlinked to a common `bin` directory, allowing you to run them from anywhere in your terminal.

## 🛠️ Tech Stack

-   **Runtime:** ![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
-   **Tools:** ![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white) ![GNU Bash](https://img.shields.io/badge/GNU_Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)

## 🚀 Installation

### Prerequisites
Before you begin, ensure you have the following installed on your system:
-   **Git**: For cloning the repository.
-   **Bash** (or a compatible shell like Zsh): The `install.sh` script and the contained utilities are written for shell environments.
-   **A Unix-like operating system**: Linux, macOS, or Windows Subsystem for Linux (WSL).

### Installation Steps

1.  **Clone the repository**
    ```bash
    git clone https://github.com/a0x14D/bins.git
    cd bins
    ```

2.  **Run the installation script**
    This script will symlink the tools in the `bin/` directory to a location in your system's PATH (e.g., `~/bin` or `/usr/local/bin`).
    ```bash
    bash install.sh
    ```
    You might need to restart your terminal or source your shell's configuration file (e.g., `source ~/.bashrc` or `source ~/.zshrc`) for the changes to take effect if the installer modifies your PATH.

## 📖 Usage

After successful installation, all scripts located in the `bin/` directory will be directly accessible as commands in your terminal.

### Discovering Available Commands
To see the list of tools installed by this repository, you can inspect the `bin/` directory:
```bash
ls bins/bin
```

### Running a Command
Once installed, simply type the name of the script followed by any arguments it might accept.
```bash
# Example: If you have a script named 'my-utility' in bin/
my-utility --option value
```
For specific usage instructions for each tool, you may need to consult its internal documentation (if available) or view its source code.

## 📁 Project Structure

```
bins/
├── bin/              # Directory containing all the executable shell scripts/utilities
│   ├── [script-name-1]
│   ├── [script-name-2]
│   └── ...
├── install.sh        # The main script to install all utilities
└── README.md         # This documentation file
```

## ⚙️ Configuration

The `install.sh` script is designed to automate the setup process. Currently, no explicit configuration options are detected.

### Environment Variables
Some individual scripts within the `bin/` directory might respect or require specific environment variables. Please check the source of individual scripts for details.

## 🤝 Contributing

We welcome contributions to expand this collection of useful utilities! If you have a general-purpose shell script that you'd like to add or improve, please follow these steps:

### Development Setup
1.  Fork the repository.
2.  Clone your forked repository: `git clone https://github.com/YOUR_USERNAME/bins.git`
3.  Create a new branch for your feature or fix.

### Adding New Scripts
1.  Place your new shell script into the `bin/` directory.
2.  Ensure your script has an executable permission: `chmod +x bin/your-new-script`
3.  Test your script thoroughly.
4.  Run `bash install.sh` to integrate your new script into your local PATH.

### Submitting Contributions
1.  Commit your changes with a clear message.
2.  Push your branch to your forked repository.
3.  Open a Pull Request to the `master` branch of the original `a0x14D/bins` repository.

## 📄 License

This project is currently **unlicensed**. Please consult the repository owner for licensing information. <!-- TODO: Add actual license file or specify license in metadata -->

## 🙏 Acknowledgments

-   To all future contributors who help expand this collection of useful `bins`.

## 📞 Support & Contact

-   🐛 Issues: [GitHub Issues](https://github.com/a0x14D/bins/issues)

---

<div align="center">

**⭐ Star this repo if you find it helpful!**

Made with ❤️ by [a0x14D](https://github.com/a0x14D)

</div><div>
<img src="./DeWatermark.ai_1719326846155.png" height="100" width="100" style="position:relative;top:60px;left:150px;"> 
<h1 style="position:relative;left:300px;bottom:30px;color:#00ff00">NOT A DUST BINS</h1>
</div>

# :house: MY BINS

This is a collection of my personal scripts and binaries that I use on a daily basis.

# :hourglass: Installation

```bash
cd bins
./install.sh -i
```
