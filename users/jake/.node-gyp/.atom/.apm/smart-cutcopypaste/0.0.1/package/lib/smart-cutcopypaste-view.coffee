{View} = require 'atom'

module.exports =
class SmartCutcopypasteView extends View
  @content: ->
    @div class: 'smart-cutcopypaste overlay from-top', =>
      @div "The SmartCutcopypaste package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "smart-cutcopypaste:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "SmartCutcopypasteView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
