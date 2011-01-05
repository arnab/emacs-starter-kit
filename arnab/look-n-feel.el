; Fill up my laptop's screen
(setq initial-frame-alist '((width . 200) (height . 60)))

; Font: Inconsolata 12pt
(set-default-font "-apple-Inconsolata-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")

; http://www.emacswiki.org/emacs/ColorTheme#toc9
(require 'color-theme)
(if window-system
  (color-theme-zenburn)

  ; (load (concat dotfiles-dir "arnab/topfunky-theme.el"))
  ; (color-theme-topfunky)
)
