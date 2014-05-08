(require 'js-comint)
(setq inferior-js-program-command "node")
;;; Fix prompt: http://stackoverflow.com/a/16632586/117750
(setenv "NODE_NO_READLINE" "1")

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(add-hook 'js2-mode-hook 'paredit-mode)

(add-hook 'js2-mode-hook '(lambda ()
                            (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                            (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
                            (local-set-key "\C-c\C-r" 'js-send-region)
                            (local-set-key "\C-cb" 'js-send-buffer)
                            (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                            (local-set-key "\C-cl" 'js-load-file-and-go)))

(eval-after-load "js2-mode"
  '(progn
     (setq js2-missing-semi-one-line-override t)
     (setq-default js2-basic-offset 2)))
