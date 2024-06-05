# Dotfiles symlinked on my machine

### Tools needed for ubuntu before installing nvim and tmux
``` bash
sudo apt install stow xsel ripgrep npm delve fdclone golang-go -y
sudo apt-get install delve -y
sudo snap install pyright bash-language-server rustup node clangd nvim --classic
rustup default stable
cargo install tree-sitter-cli
pip install compiledb

# Install tpm pluggin for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

### Install with stow:
```bash
stow --target .
```

