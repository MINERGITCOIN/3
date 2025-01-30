wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-ubuntu2204-12-8-local_12.8.0-570.86.10-1_amd64.deb
dpkg -i cuda-repo-ubuntu2204-12-8-local_12.8.0-570.86.10-1_amd64.deb
cp /var/cuda-repo-ubuntu2204-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
apt-get update -y
sudo apt-get -y install cuda-toolkit-12-8
wget -qO- https://packages.lunarg.com/lunarg-signing-key-pub.asc | tee /etc/apt/trusted.gpg.d/lunarg.asc
wget -qO /etc/apt/sources.list.d/lunarg-vulkan-jammy.list http://packages.lunarg.com/vulkan/lunarg-vulkan-jammy.list
apt update -y
apt install vulkan-sdk -y
apt update && sudo apt upgrade -y
apt install zip wget unzip -y
mkdir /home/$USER/DataMining
cd /home/$USER/DataMining
wget https://www.update.neurallead.com/DataMining/updates/DataMiningLinux.zip
unzip DataMiningLinux.zip
chmod +x /DataMining/DataMining-hive-vulkan &&
chmod +x /DataMining/DataMining-hive-nvidia &&
chmod +x /DataMining/DataMining-ubuntu-vulkan &&
reboot
