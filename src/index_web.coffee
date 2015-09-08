require 'coffee-script/register'
initalizeLogger = (callback) ->
  log = require('npmlog')
  log.level = "info"
  log.heading = 'Hacktron (renderer)'
  log.enableColor()
  callback
  return log

logger = initalizeLogger console.log('logger initialized in renderer')
menu_manager = require '../src/menu_manager'
menuManager = new menu_manager()
logger.info('menuManager', 'Initalising the menu manager')
menuManager.initalise()
