function gp -d "git add ., commit, and push"
    argparse h/help -- $argv

    if set -q _flag_h || test $(count $argv) -eq 0
        echo "Usage: gp <message>"
        return 1
    end

    git add . && git commit -m "$argv" && git push
end

