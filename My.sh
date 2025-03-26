
#!/bin/bash

# Check if git is installed, and install if not.
if ! command -v git &> /dev/null; then
  echo "git not found. Installing..."
  sudo yum install git -y # Install git (-y automatically confirms installation)
  if [ $? -ne 0 ]; then
    echo "git installation failed. Exiting."
    exit 1
  fi
fi

# 1. Download cpuminer-multi (Adjust the URL to the latest release!)
# Clone the cpuminer-multi repository from GitHub.
git clone https://github.com/tpruvot/cpuminer-multi

# Install necessary dependencies for compiling cpuminer-multi.
# This command installs various development libraries and tools required for building the miner.
sudo yum install automake curl-devel jansson-devel openssl-devel gmp-devel make gcc gcc-c++ autoconf -y

# Navigate to the cpuminer-multi directory.
cd cpuminer-multi

# Build cpuminer-multi from source.
# This command executes the build script provided by cpuminer-multi.
./build.sh

# 4. Make the miner executable.
# This command gives execute permissions to the compiled cpuminer binary.
chmod +x cpuminer

# 5. Run the miner (replace with your actual wallet address and worker name)
# This command runs the cpuminer binary with the specified algorithm, pool address, and wallet/worker information.
./cpuminer -a sha256d -o stratum+tcp://verus.farm:9999 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle

# or for tls
# ./cpuminer -a verushash2 -o verus.farm:9998 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle --tls
