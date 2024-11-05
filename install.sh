sudo apt-get install fuse nodejs npm clang ripgrep pip zsh -y
cp -r nvim ~/.config/
cd ~/Downloads
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
echo export PATH="$PATH:/opt/nvim/" >> ~/.bashrc
source ~/.bashrc
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim ~/.config/nvim/lua/my_config/packer.lua
