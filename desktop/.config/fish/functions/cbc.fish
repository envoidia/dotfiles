# Convenience wrapper for wl-copy
function cbc -w wl-copy -d "Copies text and files"
    if test $(count $argv) -eq 0
        wl-copy
    else
        set input $argv[1]

        # Copy file URI if input is a filepath
        if test -f $input
            set mime $(xdg-mime query filetype $input 2>/dev/null)

            # Pretend JPEGs are PNGs because I can't paste JPEGs into some programs otherwise (wl-clipboard bug?)
            if test $mime = image/jpeg
                wl-copy --type image/png < $input
            # Copy videos as file URIs so they can be pasted into more programs
            else if test $mime = video/mp4
                wl-copy -t text/uri-list file://$(pwd)/$input
            else
                wl-copy < $input
            end
        # Copy text if input is text
        else
            wl-copy $argv
        end
    end
end