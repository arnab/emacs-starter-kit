(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/local/bin:/usr/local/git/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/usr/local/git/bin" exec-path))

(require 'whitespace)

(require 'undo-tree)
(global-undo-tree-mode 1)
