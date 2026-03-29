# Convenience wrapper for wl-paste
function cbp -w wl-paste -d "Pastes text and files"
    # Resolve URI
    set -l content $(wl-paste 2>/dev/null)
    if string match -q 'file://*' $content
        wl-copy < $(string replace --regex '^file://' '/' $content)
    end

    wl-paste $argv
end
