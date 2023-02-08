local plguins_list = require("plugins.plugins_list")
local plugin_manager = require("plugins.plugin_manager")

plugin_manager.setup()
plugin_manager.load_plugins_from(plguins_list)
