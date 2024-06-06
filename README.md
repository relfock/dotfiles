# Dotfiles symlinked on my machine

### Tools needed for ubuntu before installing nvim and tmux
``` bash
sudo apt install stow xsel ripgrep delve fdclone golang-go -y
sudo apt-get install delve -y
sudo snap install pyright --classic
sudo snap install bash-language-server --classic
sudo snap install rustup --classic
sudo snap install clangd --classic
sudo snap install nvim --classic
rustup default stable
cargo install tree-sitter-cli
pip install compiledb

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# download and install Node.js
nvm install 20

# Install tpm pluggin for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

npm install -g neovim

### Install with stow:
stow .
```

