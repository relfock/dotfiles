# Dotfiles symlinked on my machine

### Install with stow:
```bash
stow --target .
```

### Homebrew installation:
```bash
# Leaving a machine
brew leaves > leaves.txt

# Fresh installation
xargs brew install < leaves.txt
```

### Tools needed for ubuntu
``` bash
# Install latest fzf since some tmux plugins doesn't work with the old version
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
