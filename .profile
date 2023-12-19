export TERMINAL="kitty"
export CM_LAUNCHER="rofi"
export PATH="$PATH:$HOME/.local/bin"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_QPA_PLATFORMTHEME="qt5ct"
export RANGER_DEVICONS_SEPARATOR=" "


# Where AppImages live.
if [ -d "$HOME/AppImages/" ] ; then
        PATH="$PATH:$HOME/AppImages"
fi

# Path for my personal scripts
if [ -d "$HOME/.scripts/" ] ; then
        PATH="$PATH:$HOME/.scripts"
fi

# Path for Rofi scripts
if [ -d "$HOME/.config/rofi/bin/" ] ; then
        PATH="$PATH:$HOME/.config/rofi/bin"
fi

# Path for joshuto scripts (ranger clone)
if [ -d "$HOME/.config/joshuto/" ] ; then
        PATH="$PATH:$HOME/.config/joshuto"
fi

# Path & variables for DOOM Emacs - otherwise use Sublime Text & neovim
if [ -d "$HOME/.config/emacs/bin/" ] ; then
        PATH="$PATH:$HOME/.config/emacs/bin/"
        export SUDO_EDITOR="emacsclient -t"
        export CODEEDITOR="emacsclient -c -a emacs"
        export VISUAL="emacsclient -c -a emacs"
        export EDITOR="emacsclient -t -a ''"
else
    export SUDO_EDITOR=nvim
    export CODEEDITOR=nvim
    export VISUAL=subl
    export EDITOR=subl
fi
