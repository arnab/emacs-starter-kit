(global-set-key "\C-cd" 'dash-at-point)
(add-to-list 'dash-at-point-mode-alist '(enh-ruby-mode . "rb"))
(add-hook 'rinari-minor-mode-hook
          (lambda () (setq dash-at-point-docset "rails")))
