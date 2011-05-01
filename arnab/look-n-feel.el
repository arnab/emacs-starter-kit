; Fill up my laptop's screen
(setq initial-frame-alist '((width . 200) (height . 60)))

; Font: Inconsolata 12pt
(set-default-font "-apple-Inconsolata-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")

; http://www.emacswiki.org/emacs/ColorTheme#toc9
(require 'color-theme)

(load (concat dotfiles-dir "arnab/themes/color-theme-library.el"))
(load (concat dotfiles-dir "arnab/themes/topfunky-theme.el"))
(load (concat dotfiles-dir "arnab/themes/color-theme-solarized.el"))
(load (concat dotfiles-dir "arnab/themes/color-theme-tangotango.el"))
(load (concat dotfiles-dir "arnab/themes/color-theme-thor.el"))

(if window-system
  ; (color-theme-tangotango)
  (color-theme-solarized-light)
  ; (color-theme-emacs-21)
  ; (color-theme-topfunky)
  ; (color-theme-zenburn)
)
