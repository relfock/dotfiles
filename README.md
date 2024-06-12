# Dotfiles symlinked on my machine

``` bash
### Tools needed for nvim and tmux
sudo apt install stow xsel ripgrep delve fdclone golang-go -y
sudo apt-get install delve -y
sudo snap install pyright --classic
sudo snap install bash-language-server --classic
sudo snap install rustup --classic
sudo snap install clangd --classic
rustup default stable
cargo install tree-sitter-cli
pip install compiledb

# Installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Download and install Node.js
nvm install 20

# Install tmux
sudo apt install tmux -y

# Install tpm pluggin for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install nvim
sudo snap install nvim --classic
npm install -g neovim

### Install with stow:
stow .
```
