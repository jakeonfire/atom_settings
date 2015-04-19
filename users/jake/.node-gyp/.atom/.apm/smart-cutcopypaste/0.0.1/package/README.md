# smart-cutcopypaste package

Inspired by the long lamented Raptor for Delphi, Smart Cut, Copy and Paste for Atom.

* Smart Copy works just like regular copy, unless nothing is selected, in which case it selects the current word at the insertation point before copying. Default shortcut is cmd-c.
* Smart Cut is just like Smart Copy, except it cuts the current word if nothing is selected. Default shortcut is cmd-x.
* Smart Paste selects the word under the cursor before pasting. Default shortcut is cmd-alt-v.

To-do: a better analysis of what a "word" is, to support the unique nomenclature of programmers such as @variable and whatnot.
