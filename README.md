# Dotfiles symlinked on my machine

### Tools needed for ubuntu before installing nvim and tmux
``` bash
sudo apt install stow xsel ripgrep npm delve fdclone golang-go -y
sudo apt-get install delve -y
sudo snap install pyright --classic
sudo snap install bash-language-server --classic
sudo snap install rustup node --classic
sudo snap install clangd --classic
sudo snap install nvim --classic
rustup default stable
cargo install tree-sitter-cli
pip install compiledb
sudo npm install -g neovim

# Install tpm pluggin for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

### Install with stow:
```bash
stow --target .
```

