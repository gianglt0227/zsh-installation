#!/bin/sh
sudo sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
0
EOF

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k
cp default-zshrc.zsh-template ~/.zshrc
zsh
source ~/.zshrc
