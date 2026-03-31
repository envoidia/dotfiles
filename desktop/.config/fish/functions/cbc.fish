# Convenience wrapper for wl-copy
function cbc -w wl-copy -d "Copies text and files"
    if test $(count $argv) -eq 0
        wl-copy
        return
    end

    argparse 'h/help' 'l/link' 'n/nolink' -- $argv

    if set -q _flag_h
        echo -e "usage: cbc [options] <file/dir>\nOptions:\n    -h, --help: Print this help message and exit\n    -l, --link: Copy file as link/URI\n    -n, --nolink: Never copy file as link. Without this option, videos and gifs will copy as links"
        return
    end
    
    set input $argv[1]

    # Copy file
    if test -f $input
        set -l mime $(xdg-mime query filetype $input 2>/dev/null)

        # Copy as uri
        if not set -q _flag_n
            # Separate if statement due to operator precedence
            if set -q _flag_l || test $mime = image/gif || test $(string split -f 1 / $mime) = video
                wl-copy -t text/uri-list file://$(pwd)/$input
                return
            end
        end

        # Some apps don't like pasting jpegs, but pretending it's a png fixes it
        if test $mime = image/jpeg
            wl-copy --type image/png < $input
            return
        end
        
        # Copy file normally
        wl-copy < $input
        return
    end

    # Copy text
    wl-copy $argv
end