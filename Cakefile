{exec} = require 'child_process'
task 'start', 'Start Hacktron', ->
  exec 'coffee main.coffee', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
