FNM_PATH="/home/skye/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
    export PATH="/home/skye/.local/share/fnm:$PATH"
    eval "`fnm env`"
fi

