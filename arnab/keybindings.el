;; settings
(global-set-key (kbd "s-,") (lambda()(interactive)(find-file "~/code/os/emacs-starter-kit/")))

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-c v") 'eval-buffer)

;; M-x available as C-x C-m too
(global-set-key (kbd "C-x C-m") 'smex)
;; And I never use the eshell. So avoid that typo
(global-set-key (kbd "C-x m") 'smex)

(eval-after-load "shell"
  '(progn
     ;; M-x available as C-x C-m too
     (global-set-key (kbd "C-x C-m") 'smex)
     ;; And I never use the eshell. So avoid that typo
     (global-set-key (kbd "C-x m") 'smex)))

;; Frame managements: resizing 'windows' (i.e., inside the frame)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
