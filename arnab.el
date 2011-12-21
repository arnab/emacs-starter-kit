(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/local/bin:/usr/local/git/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/usr/local/git/bin" exec-path))

(require 'whitespace)

(require 'rvm)
(rvm-use-default) ;; use rvm’s default ruby for the current Emacs session

(require 'textmate)
(textmate-mode)
