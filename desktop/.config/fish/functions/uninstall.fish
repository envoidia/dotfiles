function uninstall -w "paru -R" -d "uninstall programs"
    paru -R $argv
    paru -c
end
