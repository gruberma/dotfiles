WINDOW_NAME="$1"

SEARCH_RESULT=`xdotool search --name "$WINDOW_NAME"`

if [ -n "${SEARCH_RESULT}" ]; then
    # Activate Window
    xdotool search --name "$WINDOW_NAME" windowactivate
else
    # Create window
    gnome-terminal --title "$WINDOW_NAME" -- zsh -c "tmuxinator $WINDOW_NAME"
fi

echo "done"  # needed by buggy autokey version
