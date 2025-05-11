local log = require('utils.log')
log:write('Starting')


require("config.opts")
require("config.lazy")
require("config.keymaps")
require("config.autocmds")


