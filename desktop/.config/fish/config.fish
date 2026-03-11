alias ls="lsd -A"
alias ll="lsd -AlS"
alias lt="lsd -A --tree"
alias fd="fd -iH"
alias rg="rg -i --hidden"
alias du="dust"

alias p=wl-paste
alias drd="dragon-drop --and-exit"

alias mv="mv -i"

# Enable file path completion
# This is technically wrong for wl-copy, but I only use it via a wrapper, and adding it to the wrapper doesn't work
complete -c wl-copy -F

set DOTNET_ROOT "/usr/share/dotnet/"
set PATH "$PATH:/usr/share/dotnet:/home/envoidia/.dotnet/tools"
