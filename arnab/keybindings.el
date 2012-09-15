;; something sets C-a to mark-whole-buffer. Set it back.
(global-set-key (kbd "C-a") 'move-to-left-margin)

;; settings
(global-set-key (kbd "s-,") (lambda()(interactive)(find-file "~/code/os/emacs-starter-kit/")))
