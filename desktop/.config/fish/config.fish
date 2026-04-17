alias ls="lsd -A"
alias ll="lsd -AlS"
alias lt="lsd -A --tree"
alias fd="fd -iH"
alias rg="kitten hyperlinked-grep -i --hidden"
alias du=dust
alias cat=bat

alias drd="dragon-drop --and-exit"

alias mv="mv -i"
alias cp="cp -i"

alias cs=csharprepl

# Enable file path completion
# This is technically wrong for wl-copy, but I only use it via a wrapper, and adding it to the wrapper doesn't work
complete -c wl-copy -F

# fzf.fish
set fzf_fd_opts -iH
fzf_configure_bindings --directory=ctrl-super-f --git_log=ctrl-super-l --git_status=ctrl-super-s \
    --history=ctrl-super-h --processes=ctrl-super-p --variables=ctrl-super-r

# dotnet
# todo why is it on path 600 billion times
# set DOTNET_ROOT /usr/share/dotnet
# set PATH $PATH:/usr/share/dotnet:/home/envoidia/.dotnet/tools

# Colorize manpages
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