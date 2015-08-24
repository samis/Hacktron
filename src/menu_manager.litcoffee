# Menu Manager
This module provides a wrapper interface for Electron's own menu APIs.
It can be used to create new menus as well as new menu items.

In order to actually use this module, we'll need to export it.
Since it will be a class, this is easy.

    module.exports = MenuManager
We can now actually define our menu manager class.

    class MenuManager
In the constructor, we should obtain a copy of Electron's menu APIs.

      constructor: ->
        @menu = require 'menu'
        @menuItem = require 'menu-item'
A small wrapper method to add an item to a menu is nice.

      addItemToMenu: (menu, item) ->
      menu.append(item)
