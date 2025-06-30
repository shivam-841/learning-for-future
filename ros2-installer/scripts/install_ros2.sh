#!/bin/bash

set -e

# Update the package index
sudo apt update

# Install necessary dependencies
sudo apt install -y software-properties-common curl gnupg lsb-release

# Add the ROS2 GPG key and repository for Ubuntu 24.04 (Noble)
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | \
  sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Update the package index again
sudo apt update

# Install ROS2 Jazzy desktop
sudo apt install -y ros-jazzy-desktop

# Source the ROS2 setup script in .bashrc if not already present
if ! grep -Fxq "source /opt/ros/jazzy/setup.bash" ~/.bashrc; then
  echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
fi

# Install additional dependencies for building packages
sudo apt install -y python3-colcon-common-extensions

# Inform the user that the installation is complete
echo "ROS2 Jazzy installation completed."
echo "Please restart your terminal or run: source ~/.bashrc"