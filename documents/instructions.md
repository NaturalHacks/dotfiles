### 2025-02-04
Artix qfce install working, #note packages were broken yesterday sudo pacman -Syu yielded a qt shaders package that caused a installation loop, wasted a lot of time fault finding then went to sleep, next day the devs had changed things and it works fine now.


## step 1 
# download and install
artix xfce download, partition and install, self partition drives, root 50gb, seperate partition for home.

## step 2
# update system
sudo pacman -S base-devel
sudo pacman -Syu

## step 3
#install correct nvidia drivers (1080 ti in my case)
sudo pacman -Syu nvidia

## step 4
# setup basic filewall
sudo pacman -S ufw
ufw enable

## step 5
# set up fstab correctly
use lsblk
cfdisk
mkfs.ext4 /dev/<device name>
mkdir /mnt/<mount name>
mount /dev/<device name> /mnt/<mount name>

## step 6

# install hack font (or any other)
curl -L -O https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.gz
# unzip
tar -xzvf Hack-v3.003-ttf.tar.gz
# move to right spot after making dir
mkdir ~/.local/fonts
# pacman can do it aswell first search
sudo pacman -S ttf-hack-nerd ttf-jetbrains-mono-nerd 

## step 7, other packages

# neovim
sudo pacman -S neovim vim
# yazi (the config file is in the dotfiles)
sudo pacman -S cargo
cargo install fd-find
cargo test
cargo install --path

# docs https://yazi-rs.github.io/docs/installation
sudo pacman -S yazi ffmpeg p7zip jq poppler fd ripgrep fzf zoxide imagemagick

# zsh
sudo pacman -S zsh

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# git
sudo pacman -S git

# terminal
sudo pacman -S wezterm




