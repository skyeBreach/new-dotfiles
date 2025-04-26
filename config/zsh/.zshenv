# ================================================================================================== #
# Path Definition

# Include the users private bin
PATH=$HOME/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH

# Export once modification is complete
export PATH=$PATH

# ================================================================================================== #

. "$HOME/.cargo/env"

