;; settings
(global-set-key (kbd "M-,") (lambda()(interactive)(find-file "~/code/os/emacs-starter-kit/")))

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
(global-set-key (kbd "C-c <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-c <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <down>") 'shrink-window)
(global-set-key (kbd "C-c <up>") 'enlarge-window)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;;; Cut the newline when you cut with C-k
(setq kill-whole-line t)

;;; Duplicate a line, cause that's hard
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (yank)
)

(global-set-key (kbd "s-d") 'duplicate-line) ;; Cmd-D

(eval-after-load "browse-kill-ring"
  '(progn
    (require 'browse-kill-ring)
    (browse-kill-ring-default-keybindings)))

(global-set-key "\C-cy" '(lambda ()
   (interactive)
   (popup-menu 'yank-menu)))

(global-set-key (kbd "C-c h") 'helm-mini)

;;; Bookarmking like SublimeText and M$ VS
(global-set-key (kbd "C-c <f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
