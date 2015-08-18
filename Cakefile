require 'npm-path'.npmPath()
execPackageCommand = (command, callback) ->
  {exec} = require 'child_process'
  console.log "Executing '#{command}'"
  exec command, (err, stdout, stderr) ->
    callback err, stdout, stderr

handleCommand = (err, stdout, stderr) ->
  throw err if err
  process.stdout.write stdout + stderr

task 'compile:preinit', 'Compile the preinit.js file for Electron', ->
  execPackageCommand 'coffee -bc src/preinit.coffee', (err, stdout, stderr) ->
    handleCommand err, stdout, stderr

task 'start', 'Start Hacktron', ->
  {exec} = require 'child_process'
  exec 'electron .', (err, stdout, stderr) ->
    handleCommand err, stdout, stderr
