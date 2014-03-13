;; (require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Show ensime info as tooltips on hover too (apart from the messages
;; buffer)
(add-hook 'scala-mode-hook 'tooltip-mode)

;; (defun arnab/scala-eval-buffer ()
;;   (local-set-key (kbd "C-c v") 'ensime-inf-eval-buffer))
;; (add-hook 'scala-mode-hook 'arnab/scala-eval-buffer)

;; (defun arnab/scala-load-file ()
;;   (local-set-key (kbd "C-c C-l") 'ensime-inf-load-file))
;; (add-hook 'scala-mode-hook 'arnab/scala-load-file)

;; (defun arnab/scala-eval-last-sexp ()
;;   (local-set-key (kbd "C-x C-e") 'ensime-inf-eval-definition))
;; (add-hook 'scala-mode-hook 'arnab/scala-eval-buffer)

;; (defun arnab/scala-eval-region ()
;;   (local-set-key (kbd "C-x C-r") 'ensime-inf-eval-region))
;; (add-hook 'scala-mode-hook 'arnab/scala-eval-region)

;; (defun arnab/scala-eval-block ()
;;   (local-set-key (kbd "C-x C-b") 'ensime-inf-eval-definition))
;; (add-hook 'scala-mode-hook 'arnab/scala-eval-block)

;; (defun arnab/scala-switch-to-inf ()
;;   (local-set-key (kbd "C-c C-z") 'ensime-inf-switch))
;; (add-hook 'scala-mode-hook 'arnab/scala-switch-to-inf)
