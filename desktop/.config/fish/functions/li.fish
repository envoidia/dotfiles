# todo: auto-determine optimal column count
function li -w "timg --upscale --frames=1 --title" -d "Show a grid of image previews"
    argparse 'h/help' 'c/columns=' 'R/recursive' -- $argv
    or return

    if set -q _flag_h
        echo -e "usage: li [options] <file/dir> [<file/dir>...]\nOptions:\n    -h, --help: Print this help message and exit\n    -c, --columns <amount>: Set grid column count (default 8)\n    -R, --recursive: Recurse into directories"
        return
    end

    if not set -q _flag_c
        set _flag_c 8
    end

    set -l glob
    set -l files

    # Default to current dir
    if test $(count $argv) -eq 0
        set glob $(get_files $_flag_R -d .)

        for f in $glob
            test -f $f && set -a files $f
        end
    else
        # Provided dir(s)
        for arg in $argv
            if test -d $arg
                set glob $(get_files $_flag_R -d $arg)

                for f in $glob
                    test -f $f && set -a files $f
                end
            else
                set -a files $arg
            end
        end
    end

    timg --upscale --grid=$_flag_c --frames=1 --title $files 2>/dev/null
end

function get_files
    argparse 'R/recursive' 'd/dir=' -- $argv
    or return

    set -l glob

    if set -q _flag_R
        set glob $_flag_d/**/*
    else
        set glob $_flag_d/*
    end

    for f in $glob
        test -f $f && echo $f
    end
end