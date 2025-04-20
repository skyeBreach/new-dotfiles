set shell := ["zsh", "-cu"]

@find_modules:
    fd . --base-directory ./config --type d --exact-depth 1 --format "{}"
