install: install-vim install-bash install-zsh install-git install-bash install-tmux done

PWD_INIT=${PWD}

install-vim:
	@rm -rf ~/.vim ~/.vimrc
	@ln -s ${PWD_INIT}/vim ~/.vim
	@mkdir -p ~/.config/nvim && ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
	@ln -s ~/.vim/vimrc ~/.vimrc

install-bash:
	@rm -f ~/.bashrc
	@ln -s ${PWD_INIT}/bashrc ~/.bashrc

install-zsh:
	@rm -f ~/.zshrc
	@ln -s ${PWD_INIT}/zshrc ~/.zshrc
	@ln -sf ${PWD_INIT}/ponty-agnoster.zsh-theme ~/.oh-my-zsh/themes/ponty-agnoster.zsh-theme

install-git:
	@rm -f ~/.gitconfig
	@ln -s ${PWD_INIT}/gitconfig ~/.gitconfig

install-tmux:
	@rm -f ~/.tmux.conf
	@ln -s ${PWD_INIT}/tmux ~/.tmux.conf

done:
	@echo "Done"
