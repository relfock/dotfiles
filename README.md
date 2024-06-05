# Dotfiles symlinked on my machine

### Install with stow:
```bash
stow --target .
```

### Tools needed for ubuntu
# Clipboard, pyright, ripgrep bash-language-server npm
``` bash
sudo apt install xsel -y
sudo snap install pyright --classic -y
sudo apt-get install ripgrep -y
sudo snap install bash-language-server --classic
sudo apt install npm -y
sudo snap install rustup --classic
sudo snap install node --classic
rustup default stable
cargo install tree-sitter-cli
sudo apt install delve fdclone golang-go -y
npm install tree-sitter-cli
npm install pyright
sudo snap install clangd  --classic
pip install compiledb

# Install tpm pluggin for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
