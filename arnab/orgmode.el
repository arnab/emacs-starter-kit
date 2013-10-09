(org-mode)
(org-indent-mode)
(setq org-default-notes-file (concat org-directory "~/Dropbox/org-mode/notes.org"))
(setq org-directory "~/Dropbox/org-mode")

(add-hook 'org-mode-hook
          (lambda ()
            (setq truncate-lines nil)
            (setq longlines-wrap-follows-window-size t)))

(define-key global-map "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
