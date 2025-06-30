# C++ Toolchain Setup

This project provides a shell script to set up a C++ development environment by installing essential tools such as a compiler, debugger, profiler, and formatter.

## Prerequisites

Before running the setup script, ensure that you have the following:

- A Unix-like operating system (Linux or macOS).
- Access to a terminal with sudo privileges.
- A package manager installed (e.g., apt for Ubuntu, brew for macOS).

## Installation

To set up the C++ toolchain, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/microsoft/vscode-remote-try-cpp.git
   cd cpp-toolchain-setup
   ```

2. Make the setup script executable:

   ```
   chmod +x scripts/setup.sh
   ```

3. Run the setup script:

   ```
   ./scripts/setup.sh
   ```

## Expected Outcomes

After running the script, the following tools will be installed:

- **g++**: The GNU C++ compiler.
- **gdb**: The GNU debugger for debugging C++ applications.
- **valgrind**: A tool for memory debugging, memory leak detection, and profiling.
- **clang-format**: A tool to format C++ code according to specified style guidelines.

You can verify the installation of these tools by running the following commands:

```
g++ --version
gdb --version
valgrind --version
clang-format --version
```

## Troubleshooting

If you encounter any issues during installation, please check the following:

- Ensure your package manager is up to date.
- Check for any error messages in the terminal and resolve them accordingly.
- Refer to the documentation of the respective tools for further assistance.