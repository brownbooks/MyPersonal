# 1. Download cpuminer-multi (Adjust the URL to the latest release!)
wget https://github.com/tpruvot/cpuminer-multi/releases/download/v1.3.1/cpuminer-multi-1.3.1-linux.tar.gz

# 2. Extract the archive
tar -xzf cpuminer-multi-1.3.1-linux.tar.gz

# 3. Navigate to the extracted directory
cd cpuminer-multi-1.3.1-linux

# 4. Make the miner executable
chmod +x minerd

# 5. Run the miner (replace with your actual wallet address and worker name)
./minerd -a verushash2 -o stratum+tcp://verus.farm:9999 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle

# or for tls
# ./minerd -a verushash2 -o verus.farm:9998 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle --tls

# to run in the background with nohup
# nohup ./minerd -a verushash2 -o stratum+tcp://verus.farm:9999 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle &

# or for tls and background
# nohup ./minerd -a verushash2 -o verus.farm:9998 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle --tls &

# to use screen
# screen
# ./minerd -a verushash2 -o stratum+tcp://verus.farm:9999 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle
# or for tls
# ./minerd -a verushash2 -o verus.farm:9998 -u RSwiruLQYNgpWP36JKEmRQUddTWWi4MsVX.Oracle --tls
# ctrl + a then d to detach from screen.

