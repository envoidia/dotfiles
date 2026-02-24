function lsi -d "Show a grid of image previews"
    set -l grid 8
    test -n "$argv[1]" && set grid $argv[1]
    timg --upscale --grid=$grid --frames=1 --title *
end
