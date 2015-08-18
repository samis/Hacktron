initalizeLogger = (callback) ->
  log = require('npmlog')
  log.level = "info"
  log.heading = 'Hacktron'
  log.enableColor()
  callback
  return log

logger = initalizeLogger console.log('logger initialized')
logger.info('startup', 'Starting Hacktron')
logger.warn('startup', 'Hacktron is in very early development. Expect multiple bugs.')

app = require('app')
path = require('path')
window = require('electron-window')
# Report crashes to our server.
require('crash-reporter').start()
logger.info('startup', 'All requried libraries loaded.')
# Quit when all windows are closed.
app.on 'window-all-closed', ->
  # On OS X it is common for applications and their menu bar
  # to stay active until the user quits explicitly with Cmd + Q
  if process.platform != 'darwin'
    logger.info('shutdown', 'Hacktron quitting')
    app.quit()
  return
# This method will be called when Electron has finished
# initialization and is ready to create browser windows.
app.on 'ready', ->
  logger.info('startup', 'Creating main window')
  # Create the browser window.
  mainWindow = window.createWindow({width: 800, height: 800})
  indexPath = path.resolve(__dirname, '..', 'static', 'index.html')
  someArgs = {}
  # and load the index.html of the app.
  mainWindow.showUrl indexPath, someArgs, ->
    logger.info('main-window', 'Main window is now visible.')
    return
  # Open the devtools.
  mainWindow.openDevTools()
  # Emitted when the window is closed.
  mainWindow.on 'closed', ->
    logger.info('main-window', 'Main window closed')
    return
  return
