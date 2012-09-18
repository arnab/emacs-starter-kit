;; settings
(global-set-key (kbd "s-,") (lambda()(interactive)(find-file "~/code/os/emacs-starter-kit/")))

;; M-x available as C-x C-m too
(global-set-key (kbd "C-x C-m") 'smex)
;; And I never use the eshell. So avoid that typo
(global-set-key (kbd "C-x m") 'smex)

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-c v") 'eval-buffer)
