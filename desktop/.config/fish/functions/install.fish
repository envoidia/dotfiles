function install -w "paru -S" -d "install programs"
    paru -S $argv
    paru -c
end
