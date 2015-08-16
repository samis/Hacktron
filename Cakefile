execPackageCommand = (command, callback) ->
  {exec} = require 'child_process'
  console.log "Executing '#{command}'"
  exec "$(npm bin)/#{command}", (err, stdout, stderr) ->
    callback err, stdout, stderr
  return
task 'start', 'Start Hacktron', ->
  execPackageCommand 'coffee src/main.coffee', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
