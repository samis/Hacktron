initalizeLogger = (callback) ->
  log = require('npmlog')
  log.heading = 'Hacktron'
  log.enableColor()
  callback
  return log

logger = initalizeLogger console.log('logger initialized')
logger.info('startup', 'Starting Hacktron')
logger.warn('startup', 'Hacktron is in very early development. Expect multiple bugs.')
