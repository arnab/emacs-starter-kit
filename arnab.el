(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/local/bin:/usr/local/git/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/usr/local/git/bin" exec-path))

(require 'whitespace)

(require 'rvm)
(rvm-use-default) ;; use rvm’s default ruby for the current Emacs session

(require 'textmate)
(textmate-mode)

;; Download ess from http://ess.r-project.org/index.php?Section=download and put it in the folder below
(load "~/.emacs.d/arnab/ess-5.14/lisp/ess-site")
