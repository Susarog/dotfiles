#! /bin/bash

if ! command -v zsh &>/dev/null; then
	echo "zsh is not installed. Manually install and rerun '$HOME/.config/run_once_oh-my-zsh-install.sh'"
	exit 1
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Oh my zsh not found, installing..."
	yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
	echo "Oh my zsh already installed."
fi
