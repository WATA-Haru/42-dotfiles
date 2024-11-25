if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias nvim=$HOME/.local/bin/nvim
alias ls='ls --color=auto'
alias la='ls -a'
alias lla='ls -la'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias c='clear'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tmux='tmux -u'

alias gcl='git clone'
alias gs='git status'
alias gcm='git commit -m'
alias gad='git add'
alias gsw='git switch'
alias gbr='git branch'

# 42tokyo setting
alias francinette=$HOME/francinette/tester.sh
alias paco=$HOME/francinette/tester.sh
alias norminette='norminette -R CheckForbiddenSourceHeader'

#- -----------------------------------------------------------------------------
#- asdf
#- -----------------------------------------------------------------------------
# if status is-interactive
#   source ~/.asdf/asdf.fish
# end
source ~/.asdf/asdf.fish

set PATH $HOME/.local/bin:/usr/local/bin /home/hwata/.local/bin /home/hwata/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/ $PATH

# cd my documents
set MY_WIN_HOME_DIR "/mnt/c/Users/hwata"

alias cddev="cd ~/hwatadev"
alias cdhwata="cd $MY_WIN_HOME_DIR/Documents/HarutoWatahiki"
alias cdob="cd $MY_WIN_HOME_DIR/Documents/obsidian-sync"
alias cdobs="cd $MY_WIN_HOME_DIR/Documents/obsidian-sync"

# edit config alias
alias fishconfig="vim ~/.config/fish/config.fish"
# create symbolic link for pre-installed nvim share and state dir
alias nvimshare="rm -rf ~/.local/share/nvim && mkdir ~/.local/share && ln -s /home/nvim_localplug_cache/share/nvim ~/.local/share/nvim"
alias nvimstate="rm -rf ~/.local/state/nvim && mkdir ~/.local/state && ln -s /home/nvim_localplug_cache/state/nvim ~/.local/state/nvim"

function fish_user_key_bindings
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
    if test "$__fish_active_key_bindings" = fish_vi_key_bindings
        bind -M insert -m default jk force-repaint
    end
end

