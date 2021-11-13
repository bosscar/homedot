sudo systemctl enable iwd dhcpcd
sudo systemctl start iwd dhcpcd
iwctl
ping -c5 gnu.org

git clone https://github.com/bosscar/homedot.git ~/.config
ln -sf ~/.config/.bashrc ~/.bashrc
ln -sf ~/.config/.bash_profile ~/.bash_profile
ln -sf ~/.config/.xinitrc ~/.xinitrc
ln -sf ~/.config/.tmux.conf ~/.tmux.conf
ln -sf ~/.config/.Xresources ~/.Xresources

mkdir ~/.sources
cd ~/.sources
git clone https://github.com/bosscar/dwm-flexipatch.git
git clone https://github.com/bosscar/st-flexipatch.git
git clone https://github.com/bosscar/dmenu-flexipatch.git
git clone https://github.com/bosscar/slstatus.git
git clone https://github.com/bosscar/slock.git
git clone https://github.com/dudik/herbe
git clone https://github.com/muquit/grabc.git

cd ~/.sources/slstatus
sudo make clean install

cd ~/.sources/dmenu-flexipatch
sudo make clean install

cd ~/.sources/st-flexipatch
sudo make clean install

cd ~/.sources/dwm-flexipatch
sudo make clean install

cd ~/.sources/grabc
make
sudo make install

cd ~/.sources/herbe
sudo make install

cd ~/.sources/slock
sudo make install

mkdir -p ~/.cache/vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +'PlugInstall --sync' +qa

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo systemctl enable cronie sshd
sudo systemctl start cronie sshd
cronjob="* * * * * env DISPLAY=:0 sh ~/.config/walle.sh"
echo "$cronjob" | sudo crontab -u bosscar -

mkdir -p ~/screenshots
mkdir -p ~/downloads
mkdir -p ~/projects
mkdir -p ~/.config/bin

pip install rtv jupyterlab pywal
yes | broot

curl -sSf https://sh.rustup.rs | sh
source ~/.bashrc
cd /opt
sudo git clone https://aur.archlinux.org/paru.git
sudo chown -R bosscar:bosscar ./paru
cd paru
makepkg -si
cd ~
sudo rm -rf /opt/paru

paru -Syyu && yes | paru -Scc
paru -S exa bat ripgrep dust fd sd procs cava brave-nightly-bin
cargo install evcxr_jupyter
evcxr_jupyter --install

git config --global user.email "bosscar@gmail.com"
git config --global user.name "bosscar"
git config --global credential.helper store
