-- Blackout-Nvim
-- This file simply pulls together the various plugins and settings
-- defined within the core/ directory. If something is not being
-- loaded properly, you might need to :source this file in neovim.
require("core.keymaps")
require("core.settings")
require("core.plugins")
require("core.plugin_config")
