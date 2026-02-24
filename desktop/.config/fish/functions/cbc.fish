# Convenience wrapper for wl-copy
function cbc -d "Copies text and files"
    if test (count $argv) -eq 0
        wl-copy
    else
        set input $argv[1]

        # Copy file if input is a filepath
        if test -f "$input"
            set mime (xdg-mime query filetype "$input" 2>/dev/null)

            # Pretend jpegs are pngs because they're broken otherwise for some reason
            if test "$mime" = "image/jpeg"
                wl-copy --type image/png < "$input"
            else
                wl-copy < "$input"
            end
        # Copy text if input is text
        else
            wl-copy $argv
        end
    end
end