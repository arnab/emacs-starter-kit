;;; starter-kit-ruby.el --- Some helpful Ruby code
;;
;; Part of the Emacs Starter Kit

;; Until this makes it into ELPA:
(autoload 'ruby-mode "ruby-mode" "" t)
(autoload 'inf-ruby "inf-ruby" "" t)
(autoload 'run-ruby "inf-ruby" "" t)

(eval-after-load 'ruby-mode
  '(progn
     (require 'inf-ruby)
     (require 'ruby-compilation)

     (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key ruby-mode-map (kbd "C-c l") "lambda")))

(global-set-key (kbd "C-h r") 'ri)

;; We never want to edit Rubinius bytecode
(add-to-list 'completion-ignored-extensions ".rbc")

;; TODO: set up ri
;; TODO: electric
;; TODO: flymake

(provide 'starter-kit-ruby)
;; starter-kit-ruby.el ends here