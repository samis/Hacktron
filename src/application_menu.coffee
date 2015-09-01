template = undefined
if process.platform == 'darwin'
  template = [
    {
      label: 'Hacktron'
      submenu: [
        {
          label: 'About Hacktron'
          selector: 'orderFrontStandardAboutPanel:'
        }
        { type: 'separator' }
        {
          label: 'Services'
          submenu: []
        }
        { type: 'separator' }
        {
          label: 'Hide Hacktron'
          accelerator: 'Command+H'
          selector: 'hide:'
        }
        {
          label: 'Hide Others'
          accelerator: 'Command+Shift+H'
          selector: 'hideOtherApplications:'
        }
        {
          label: 'Show All'
          selector: 'unhideAllApplications:'
        }
        { type: 'separator' }
        {
          label: 'Quit'
          accelerator: 'Command+Q'
          click: ->
            app.quit()
            return

        }
      ]
    }
    {
      label: 'Edit'
      submenu: [
        {
          label: 'Undo'
          accelerator: 'Command+Z'
          selector: 'undo:'
        }
        {
          label: 'Redo'
          accelerator: 'Shift+Command+Z'
          selector: 'redo:'
        }
        { type: 'separator' }
        {
          label: 'Cut'
          accelerator: 'Command+X'
          selector: 'cut:'
        }
        {
          label: 'Copy'
          accelerator: 'Command+C'
          selector: 'copy:'
        }
        {
          label: 'Paste'
          accelerator: 'Command+V'
          selector: 'paste:'
        }
        {
          label: 'Select All'
          accelerator: 'Command+A'
          selector: 'selectAll:'
        }
      ]
    }
    {
      label: 'View'
      submenu: [
        {
          label: 'Reload'
          accelerator: 'Command+R'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.reload()
            return

        }
        {
          label: 'Toggle Full Screen'
          accelerator: 'Ctrl+Command+F'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.setFullScreen !focusedWindow.isFullScreen()
            return

        }
        {
          label: 'Toggle Developer Tools'
          accelerator: 'Alt+Command+I'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.toggleDevTools()
            return

        }
      ]
    }
    {
      label: 'Window'
      submenu: [
        {
          label: 'Minimize'
          accelerator: 'Command+M'
          selector: 'performMiniaturize:'
        }
        {
          label: 'Close'
          accelerator: 'Command+W'
          selector: 'performClose:'
        }
        { type: 'separator' }
        {
          label: 'Bring All to Front'
          selector: 'arrangeInFront:'
        }
      ]
    }
    {
      label: 'Help'
      submenu: [
        {
          label: 'Learn More'
          click: ->
            require('shell').openExternal 'http://electron.atom.io'
            return

        }
        {
          label: 'Documentation'
          click: ->
            require('shell').openExternal 'https://github.com/atom/electron/tree/master/docs#readme'
            return

        }
        {
          label: 'Community Discussions'
          click: ->
            require('shell').openExternal 'https://discuss.atom.io/c/electron'
            return

        }
        {
          label: 'Search Issues'
          click: ->
            require('shell').openExternal 'https://github.com/atom/electron/issues'
            return

        }
      ]
    }
  ]
else
  template = [
    {
      label: '&File Hacktron'
      submenu: [
        {
          label: '&Open'
          accelerator: 'Ctrl+O'
        }
        {
          label: '&Close'
          accelerator: 'Ctrl+W'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.close()
            return

        }
      ]
    }
    {
      label: '&View'
      submenu: [
        {
          label: '&Reload'
          accelerator: 'Ctrl+R'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.reload()
            return

        }
        {
          label: 'Toggle &Full Screen'
          accelerator: 'F11'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.setFullScreen !focusedWindow.isFullScreen()
            return

        }
        {
          label: 'Toggle &Developer Tools'
          accelerator: 'Shift+Ctrl+I'
          click: ->
            focusedWindow = BrowserWindow.getFocusedWindow()
            if focusedWindow
              focusedWindow.toggleDevTools()
            return

        }
      ]
    }
    {
      label: 'Help'
      submenu: [
        {
          label: 'Learn More about Hacktron'
          click: ->
            require('shell').openExternal 'http://electron.atom.io'
            return

        }
        {
          label: 'Documentation'
          click: ->
            require('shell').openExternal 'https://github.com/atom/electron/tree/master/docs#readme'
            return

        }
        {
          label: 'Community Discussions'
          click: ->
            require('shell').openExternal 'https://discuss.atom.io/c/electron'
            return

        }
        {
          label: 'Search Issues'
          click: ->
            require('shell').openExternal 'https://github.com/atom/electron/issues'
            return

        }
      ]
    }
  ]

module.exports = template
