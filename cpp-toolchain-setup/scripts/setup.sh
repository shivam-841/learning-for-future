#!/bin/bash

# Update package list
sudo apt update

# Install C++ compiler
sudo apt install -y g++

# Install debugger
sudo apt install -y gdb

# Install profiler
sudo apt install -y valgrind

# Install code formatter
sudo apt install -y clang-format

echo "C++ toolchain setup completed successfully."