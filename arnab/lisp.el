; See http://stackoverflow.com/questions/4551283 and http://www.arnab-deka.com/posts/notes/emacs-setup/

(defun slime-common-lisp ()
  (interactive)
  (setq inferior-lisp-program "/usr/local/bin/clisp") ; Common Lisp impl
  (add-to-list 'load-path "~/.emacs.d/managed-packages/slime-from-cvs/slime")  ; SLIME from CVS directory
  (require 'slime)
  (slime-setup '(slime-repl))
  (slime))

(defun slime-connect-clojure ()
  (interactive)
  (add-to-list 'load-path "~/.emacs.d/managed-packages/slime-from-elpa/slime-20100404.1")
  (add-to-list 'load-path "~/.emacs.d/managed-packages/slime-from-elpa/slime-repl-20100404")
  (require 'slime)
  (slime-setup '(slime-repl))
  (slime-connect "localhost" 4005))
