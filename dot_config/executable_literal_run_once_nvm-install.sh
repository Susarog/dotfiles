#! /bin/bash

export NVM_DIR="$HOME/.nvm" && (
	git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
	git -C "$NVM_DIR" checkout $(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
) && \. "$NVM_DIR/nvm.sh"

# exporting to do installations below
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

nvm install --lts
