execPackageCommand = (command, callback) ->
  {exec} = require 'child_process'
  console.log "Executing '#{command}'"
  exec "$(npm bin)/#{command}", (err, stdout, stderr) ->
    callback err, stdout, stderr
  return
handleCommand = (err, stdout, stderr) ->
  execPackageCommand 'coffee -bc src/preinit.coffee', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
  return
task 'start', 'Start Hacktron', ->
  execPackageCommand 'coffee src/preinit.js', (err, stdout, stderr) ->
    handleCommand err, stdout, stderr
task 'compile:preinit', 'Compile the preinit.js file for Electron', ->
  execPackageCommand 'coffee -bc src/preinit.coffee', (err, stdout, stderr) ->
    handleCommand err, stdout, stderr
