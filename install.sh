cd ~/.vim
echo "Updating plug-ins..."
mkdir -p bundle
ruby update_bundles

echo "Installing vimfiles..."

cp ~/.vimrc ~/.vimrc.old > /dev/null
rm ~/.vimrc > /dev/null
cp ~/.vimrc.local ~/.vimrc.local.old > /dev/null
rm ~/.vimrc.local

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/vimrc.local ~/.vimrc.local
