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
  'app-version': '0.1.0'
}

packagerCallback = (err, appPath) ->
  throw err if err
  console.log 'Packaging complete. Packaged application is located at #{appPath}'

task 'package:all', 'Package Hacktron for all platforms', ->
  packager = require('electron-packager')
  console.log 'Packaging Hacktron for all platforms.'
  packager_opts = opts
  packager_opts.all = 'true'
  packager.package(packager_opts, packagerCallback)

task 'package:win', 'Package Hacktron for Windows', ->
  packager = require 'electron-packager'
  packager_opts = opts
  packager_opts.arch = 'all'
  packager_opts.platform = 'win32'
  packager.package(packager_opts, packagerCallback)
