// Configure CodeMirror Keymap
require([
  'nbextensions/vim_binding/vim_binding',
], function() {
  // Map jj to <Esc>
  CodeMirror.Vim.map("jj", "<Esc>", "insert");
});