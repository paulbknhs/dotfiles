if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status --is-login
    set -gx PATH $PATH ~/linux/bin
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

set HB_CNF_HANDLER (brew --repository)"/Library/Taps/homebrew/homebrew-command-not-found/handler.fish"
if test -f $HB_CNF_HANDLER
    source $HB_CNF_HANDLER
end

set -x -g -a EDITOR nvim


# The next line updates PATH for the Google Cloud SDK.
bass source '/home/paul/Downloads/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '/home/paul/Downloads/google-cloud-sdk/completion.bash.inc'

alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
