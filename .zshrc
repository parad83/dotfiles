export PATH="/Users/parad/.local/bin:$PATH"

# for zathura
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET" 

# oh my zsh confgi
source ~/.omz

alias ls='ls --color'
alias ll='ls -al'

alias vi='nvim' 

alias todo='vi ~/TODO.md'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/parad/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/parad/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/parad/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/parad/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

