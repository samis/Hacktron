execPackageCommand = (command, callback) ->
  {exec} = require 'child_process'
  console.log "Executing '#{command}'"
  exec command, (err, stdout, stderr) ->
    callback err, stdout, stderr

handleCommand = (err, stdout, stderr) ->
  throw err if err
  process.stdout.write stdout + stderr

opts = {
  dir: '.',
  name: 'Hacktron',
  version: '0.30.4',
  out: 'out',
  'app-version': '0.1.0',
}
