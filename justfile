set shell := ["zsh", "-cu"]

DIR_ROOT := justfile_directory()
DIR_SCRIPTS := DIR_ROOT/"scripts"

@find_modules params='':
    fd . --base-directory ./config/ --type d --exact-depth 2 {{params}}

@find_modules_home:
    just find_modules | rg -Po -e '(?<=home\/)\w*'

@find_modules_etc:
    just find_modules | rg -Po -e '(?<=etc\/)\w*'

# Utility Script

# Runs the update script located in the scripts dir
@update:
    {{DIR_SCRIPTS}}/update
