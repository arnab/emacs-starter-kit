(setq inferior-lisp-program "/usr/local/bin/clisp") ; your Lisp system
; (add-to-list 'load-path "~/hacking/lisp/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup)

(provide 'arnab/lisp)
