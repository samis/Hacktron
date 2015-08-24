execPackageCommand = (command, callback) ->
  {exec} = require 'child_process'
  console.log "Executing '#{command}'"
  exec command, (err, stdout, stderr) ->
    callback err, stdout, stderr

handleCommand = (err, stdout, stderr) ->
  throw err if err
  process.stdout.write stdout + stderr
