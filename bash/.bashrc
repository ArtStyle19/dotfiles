#
# ~/.bashrc
#
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias cocos='cd /mnt/c/Users/cocos'
# alias vim='vimx'




######### CONFIG #########

# Language

export LANG=en_US.UTF-8

# -------------------------------------





# # Set up fzf key bindings and fuzzy completion
eval "$(fzf --tmux center  --bash)"
export FZF_TMUX=1
export FZF_TMUX_OPTS='-p 80%,60%'
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

# export FZF_CTRL_T_OPTS=""






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

######## Cargo source
#. "$HOME/.cargo/env"



# -------------------------------------

###### Lvim export

# export PATH="$HOME/.local/bin:$PATH"

# -------------------------------------


###### Clipboard
export DISPLAY=:0

# -------------------------------------
export LIBVIRT_DEFAULT_URI='qemu:///system'


######################full color tmux-vim
export TERM="xterm-256color"




###################### tmux 
pre="代表"

session_name="$pre - vicari"

# # AUTO START CODE - TMUX in a vscode project
# if [ -z "$TMUX" ]; then
#     if [ "$TERM_PROGRAM" = "vscode" ]; then
#         # session_name="VSCODE - $(basename "$PWD")"
#         session_name="$pre - $(basename "$PWD")"
#         if ! tmux has-session -t "$session_name" 2>/dev/null; then
#             tmux new-session -s "$session_name"
#         else
#             tmux attach -t "$session_name"
#         fi
# # Auto-start tmux session named 'vicari-home' if not already in tmux
# #     else
# #         session_name="$pre - vicari"
# #         if ! tmux has-session -t "$session_name" 2>/dev/null; then
# #             tmux new-session -s "$session_name"
# #         else
# #             tmux attach -t "$session_name"
# #         fi
# #
# #
# #
#         fi
# fi


t1() {
    tmux new-session -s "$session_name"
}


tx() {
    #session_name="PROJECT - $(basename "$PWD")"
    session_name="$pre - $(basename "$PWD")"
    #session_name="$("$PWD")"
    if ! tmux has-session -t "$session_name" 2>/dev/null; then
        tmux new-session -s "$session_name"
    else
        tmux attach -t "$session_name"
    fi
}


##################### TMUX _SESSION
PATH="$PATH":"$HOME/.local/bin/"
bind '"\C-f":"tmux-sessionizer\n"'

#
#

#################### CLEAN TMUX RESURRECTIONS
alias clean-tmux='rm /home/vicari/.local/share/tmux/resurrect/tmux_*'





#################### JAVA PATH

export JAVA_HOME=/home/vicari/.jdks/ms-21.0.7
export PATH=$JAVA_HOME/bin:$PATH




################### Laravel Path

export PATH="$PATH:~/.config/composer/vendor/bin"



################### Proxy
#export http_proxy="http://172.17.176.16:3128"
#export https_proxy="http://172.17.176.16:3128"
#export ftp_proxy="http://172.17.176.16:3128"
#export no_proxy="localhost,127.0.0.1"

# CUDA Configuration
export CUDA_HOME=/usr/local/cuda
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
