# Convenience wrapper for wl-copy
function cbc -w wl-copy -d "Copies text and files"
    if test $(count $argv) -eq 0
        wl-copy
        return
    end

    argparse 'h/help' 'l/link' 'n/nolink' -- $argv

    if set -q _flag_h
        echo -e "usage: cbc [options] <file/dir>\nOptions:\n    -h, --help: Print this help message and exit\n    -l, --link: Copy file as link/URI\n    -n, --nolink: Never copy file as link. Without this option, audio, videos, and GIFs will copy as links"
        return
    end
    
    set input $argv[1]

    # Copy file
    if test -f $input
        set -l mime $(xdg-mime query filetype $input 2>/dev/null)
        set -l mime_prefix $(string split -f 1 / $mime)

        # Copy as URI
        if not set -q _flag_n
            # Separate if statement due to operator precedence
            if set -q _flag_l || test $mime = image/gif || test $mime = image/webp || \
                test $mime_prefix = video || test $mime_prefix = audio
                wl-copy -t text/uri-list file://$(pwd)/$input
                return
            end
        end

        # Some apps don't like pasting JPEGs, but pretending it's a PNG fixes it
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