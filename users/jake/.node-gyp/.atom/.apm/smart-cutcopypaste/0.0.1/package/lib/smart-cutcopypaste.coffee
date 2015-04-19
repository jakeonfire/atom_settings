module.exports =
  activate: (state) ->
    atom.workspaceView.command "smart-cutcopypaste:smart_copy", => @smart_copy()
    atom.workspaceView.command "smart-cutcopypaste:smart_cut", => @smart_cut()
    atom.workspaceView.command "smart-cutcopypaste:smart_paste", => @smart_paste()

  handle_selection: (editor) ->
    range = editor.getSelectedBufferRange()
    if range.isEmpty()
      editor.selectWord()


  smart_copy: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem

    @handle_selection(editor)
    editor.copySelectedText()

  smart_cut: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem

    @handle_selection(editor)
    editor.cutSelectedText()

  smart_paste: ->
    editor = atom.workspace.activePaneItem

    @handle_selection(editor)
    editor.pasteText()
