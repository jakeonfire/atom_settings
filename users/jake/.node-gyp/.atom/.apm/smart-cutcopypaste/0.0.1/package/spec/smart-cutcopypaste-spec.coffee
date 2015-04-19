{WorkspaceView} = require 'atom'
SmartCutcopypaste = require '../lib/smart-cutcopypaste'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "SmartCutcopypaste", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('smart-cutcopypaste')

  describe "when the smart-cutcopypaste:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.smart-cutcopypaste')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.workspaceView.trigger 'smart-cutcopypaste:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.smart-cutcopypaste')).toExist()
        atom.workspaceView.trigger 'smart-cutcopypaste:toggle'
        expect(atom.workspaceView.find('.smart-cutcopypaste')).not.toExist()
