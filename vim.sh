PREFIX=$(cd "$(dirname "$0")"; pwd)
PREFIX=$PREFIX

cd $PREFIX
sudo cp $PREFIX/vimrc /etc/vim/vimrc
sudo cp $PREFIX/vim/* /usr/share/vim/vimfiles/ -R
cp $PREFIX/vim ~/.vim -R
sudo cp $PREFIX/vim/colors/* /usr/share/vim/vim73/colors/ -R
wget https://github.com/downloads/kchmck/vim-coffee-script/vim-coffee-script-v002.zip
unzip -od ~/.vim vim-coffee-script-v002.zip
rm vim-coffee-script-v002.zip


