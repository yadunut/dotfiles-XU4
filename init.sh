DOTFILES="$HOME/dev/github.com/yadunut/dotfiles-XU4"

export ZSH="$DOTFILES/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p $DOTFILES/files
mkdir -p ~/.config/nvim/dein

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $DOTFILES/files/installer.sh
sh $DOTFILES/files/installer.sh ~/.config/nvim/dein

#Setup for deoplete-go
go get -u github.com/nsf/gocode

#symlink the appropriate files in the dotfiles folder
ln -s -F $DOTFILES/nvim.vim ~/.config/nvim/init.vim
mv ~/.zshrc ~/.zshrc.bak
ln -s -F $DOTFILES/zshrc.zsh ~/.zshrc

