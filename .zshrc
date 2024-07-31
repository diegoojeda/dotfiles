export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="~/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools/"
export DOTNET_ROOT=/usr/share/dotnet/ 

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/opt/mssql-tools18/bin"
export PATH="$PATH:$HOME/.bzt/jmeter-taurus/bin"

export LD_LIBRARY_PATH=/home/diego/Projects/estibarna-backend/quaint/bin/Debug/net8.0/clidriver/lib

source ~/.aliases

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
