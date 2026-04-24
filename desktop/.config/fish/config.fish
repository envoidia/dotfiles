### aliases
# basic file ops
alias ls="lsd -A --hyperlink=auto"
alias ll="ls -lS"
alias lt="ls --tree"
alias fd="fd -iH"
alias rg="kitten hyperlinked-grep -i --hidden"
alias du=dust
alias cat=bat
alias mv="mv -i"
alias cp="cp -i"
# editors
alias vim=nvim
alias v=vim
alias zed=zeditor
alias z=zed
# other
alias drd="dragon-drop --and-exit"
alias ic="kitten icat"
alias cs=csharprepl

# enable file path completion
# this is technically wrong for wl-copy, but i only use it via a wrapper, and adding it to the wrapper doesn't work
complete -c wl-copy -F

# fzf.fish
set -l hypr ctrl-super
set fzf_fd_opts -iH
fzf_configure_bindings --directory=$hypr-f --git_log=$hypr-l --git_status=$hypr-s \
    --history=$hypr-h --processes=$hypr-p --variables=$hypr-r

# dotnet
set PATH $PATH:/usr/share/dotnet:/home/envoidia/.dotnet/tools
set DOTNET_ROOT /usr/share/dotnet

# colorize manpages
set -x LESS_TERMCAP_mb $(printf "\e[1;95m")
set -x LESS_TERMCAP_md $(printf "\e[1;95m")
set -x LESS_TERMCAP_us $(printf "\e[4;1;94m")
set -x LESS_TERMCAP_so $(printf "\e[1;38;5;183;48;5;54m")
set -x LESS_TERMCAP_me $(printf "\e[0m")
set -x LESS_TERMCAP_se $(printf "\e[0m")
set -x LESS_TERMCAP_ue $(printf "\e[0m")
set -x LESS_TERMCAP_mr $(printf "\e[7m")
set -x LESS_TERMCAP_mh $(printf "\e[2m")
set -x GROFF_NO_SGR 1
