sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

ln -sf ~/dotfiles/zshrc ~/.zshrc;
git config --global core.editor "code --wait";
