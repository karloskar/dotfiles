#!/bin/bash

echo "Installing..."

ln -sf ~/.vim/plugged/xmledit/ftplugin/xml.vim ~/.vim/plugged/xmledit/ftplugin/html.vim
# Make xmledit autocomplete jinja files
if [ -f ~/.vim/plugged/xmledit/ftplugin/jinja.vim ]
then
  echo "jinja.vim symlink already exists"
else
  ln -s ~/.vim/plugged/xmledit/ftplugin/html.vim ~/.vim/plugged/xmledit/ftplugin/jinja.vim
fi
# Make xmledit autocomplete javascript files (for JSX)
if [ -f ~/.vim/plugged/xmledit/ftplugin/javascript.jsx.vim ]
then
  echo "javascript.jsx.vim symlink already exists"
else
  ln -s ~/.vim/plugged/xmledit/ftplugin/html.vim ~/.vim/plugged/xmledit/ftplugin/javascript.vim
fi

echo "Done."
