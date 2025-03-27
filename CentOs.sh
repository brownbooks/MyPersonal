#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo yum update -y

# Install libsodium-devel (required dependency)
echo "Installing libsodium-devel..."
sudo yum install libsodium-devel -y

# Download hellminer
echo "Downloading hellminer..."
wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz

# Extract the downloaded archive
echo "Extracting hellminer..."
tar -xvzf hellminer_linux64.tar.gz

# Change directory to extracted folder
cd hellminer_linux64 || { echo "Extraction failed"; exit 1; }

# Make hellminer executable
echo "Setting executable permissions..."
chmod +x hellminer

# Run hellminer
echo "Starting hellminer..."
./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Orcale -p x

# Optional: Run in the background
# nohup ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Orcale -p x > miner.log 2>&1 &

echo "Hellminer setup completed successfully!"
