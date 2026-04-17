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

set DOTNET_ROOT /usr/share/dotnet
set PATH $PATH:/usr/share/dotnet:/home/envoidia/.dotnet/tools