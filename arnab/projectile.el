(require 'projectile)

(projectile-global-mode)
(setq projectile-completion-system 'grizzl)
(global-set-key (kbd "s-t") 'projectile-find-file)
