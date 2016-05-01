LOC=`pwd`
cd ~
ln -s $LOC/.bashrc .bashrc
ln -s $LOC/.tmux.conf .tmux.conf
ln -s $LOC/.vim .vim
ln -s $LOC/.vimrc .vimrc

#now setup and reclone all the other files
echo "Setting up Vim"
echo "cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Plugins"
vim +PluginInstall +qall

echo "Installing YCM"
cd ~/.vim/bundle/YouCompleteMe
sudo apt-get install libclang-dev

sudo apt-get install clang-3.5

sudo apt-get install clang-3.5

./install.py --clang-completer --system-libclang
cd third_party/ycmd/
cp /usr/lib/llvm-3.5/lib/libclang.so.1 .

