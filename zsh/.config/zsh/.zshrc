#{{{ Base config, Plugins, modules, programs config

source $ZDOTDIR/plugins/vi-mode.zsh/vi-mode.plugin.zsh
source $ZDOTDIR/plugins/wbase.zsh/wbase.zsh

# Load hooks installed by other dotfile modules
() {
    setopt localoptions null_glob
    if [[ -d $ZDOTDIR/hooks ]] ; then
        for f in $ZDOTDIR/hooks/?*.zsh ; do
            [ -r "$f" ] && source "$f"
        done
        unset f
    fi
}

# Enable fish-shell like autosuggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'
ZSH_AUTOSUGGEST_USE_ASYNC=1
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# command not found on Arch Linux
maybe_source /usr/share/doc/pkgfile/command-not-found.zsh

# fzf keybindings and completion
if check_prog fzf; then
    source $ZDOTDIR/plugins/fzf/completion.zsh
    source $ZDOTDIR/plugins/fzf/key-bindings.zsh
fi

# Prompt: git status, hostname for ssh sessions, vi mode indicator
source $ZDOTDIR/plugins/git-prompt.zsh/git-prompt.zsh
source $ZDOTDIR/plugins/git-prompt.zsh/examples/wprompt.zsh

# Enable syntax highlighting. Must be loaded after all `zle -N` calls (see
# https://github.com/zsh-users/zsh-syntax-highlighting#faq)
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Enable fish-shell like history searching. Must be loaded after zsh-syntax-highlighting.
source $ZDOTDIR/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
#}}}


#{{{ Keybindings
# substring search plugin
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-down
bindkey -M vicmd '^k' history-substring-search-up
bindkey -M vicmd '^p' history-substring-search-up
bindkey -M vicmd '^j' history-substring-search-down
bindkey -M vicmd '^n' history-substring-search-down
bindkey '^k' history-substring-search-up
bindkey '^p' history-substring-search-up
bindkey '^j' history-substring-search-down
bindkey '^n' history-substring-search-down

# autosuggest plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

# edit-command-line module
bindkey -M vicmd 'V' edit-command-line
#}}}

#{{{ Aliases
alias ...='cd ../..'
alias cpstat='rsync -haP'
alias datea='date +%F'
alias g='git'
alias d='docker'
alias p='podman'
alias grep='grep --color=auto'
alias ip='ip -c'
alias la='exa --long --group --classify --all'
alias l='exa --long --group --classify'
alias ls='ls --color=auto'
alias fd='fdfind'
alias pacu='pikaur -Syu'
alias :q='exit'
alias del='trash'
alias ssh-public-key='cat ~/.ssh/id_rsa.pub'
alias vim='nvim'
alias whoneeds='pacman -Qi'
alias T="$TERMCMD 2>&1 > /dev/null &!"
alias o="rifle"
alias mdstat='cat /proc/mdstat'
alias op="xdg-open"
alias ra='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias csv='vd --filetype=csv'
alias branch='for k in `git branch | perl -pe '\''s/^..(.*?)( ->.*)?$/\1/'\''`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r | head -n 20'
alias branch-all='for k in `git branch | perl -pe '\''s/^..(.*?)( ->.*)?$/\1/'\''`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r'


export CLASSPATH=".:$HOME/.local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "$HOME/.local/lib/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$HOME/.local/lib/antlr-4.7.2-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'
#}}}

# vim:foldmethod=marker

# ssh key unlock for WSL (requires kechain to be installed)
if [[ `uname -r` == *"microsoft-standard-WSL2"* ]]; then
    eval `keychain --eval --quiet`;
fi

# bookmarks
if [ -d "$HOME/.bookmarks" ]; then
    export CDPATH=".:$HOME/.bookmarks:/"
    alias goto="cd -P"
    alias j="cd -P"
fi
