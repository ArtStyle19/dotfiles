#
# ~/.bashrc
#
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '




######### CONFIG #########

# Language

export LANG=en_US.UTF-8

# -------------------------------------

# oh-my-posh conf

export PATH=$PATH:/home/vicari/.local/bin

eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/vicari.omp.json)"

# -------------------------------------

####### NVM export

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# -------------------------------------


####### Pyenv export

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv init --path)"


# -------------------------------------

####### Cargo source
. "$HOME/.cargo/env"


###### Lvim export

export PATH="$HOME/.local/bin:$PATH"




###### Clipboard
export DISPLAY=:0
