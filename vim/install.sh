#!/bin/bash

echo "Installing..."

# Do vundle install, should be handled from within vimrc
vim +q

ln -sf ~/.vim/bundle/xmledit/ftplugin/xml.vim ~/.vim/bundle/xmledit/ftplugin/html.vim
# Make xmledit autocomplete jinja files
if [ -f ~/.vim/bundle/xmledit/ftplugin/jinja.vim ]
then
  echo "jinja.vim symlink already exists"
else
  ln -s ~/.vim/bundle/xmledit/ftplugin/html.vim ~/.vim/bundle/xmledit/ftplugin/jinja.vim
fi
# Make xmledit autocomplete javascript files (for JSX)
if [ -f ~/.vim/bundle/xmledit/ftplugin/javascript.jsx.vim ]
then
  echo "javascript.jsx.vim symlink already exists"
else
  ln -s ~/.vim/bundle/xmledit/ftplugin/html.vim ~/.vim/bundle/xmledit/ftplugin/javascript.vim
fi

echo "Done."
