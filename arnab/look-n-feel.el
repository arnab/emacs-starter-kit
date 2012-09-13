; Fill up my laptop's screen
(setq initial-frame-alist '((width . 220) (height . 65)))

; Font: Inconsolata
(set-default-font "-apple-Inconsolata-medium-normal-normal-*-21-*-*-*-m-0-iso10646-1")

; http://www.emacswiki.org/emacs/ColorTheme#toc1

(load "~/.emacs.d/elpa/color-theme-6.5.5/color-theme.el")
; (color-theme-initialize)
; (load "~/.emacs.d/elpa/color-theme-monokai-0.0.5/color-theme-monokai.el")
(load "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
(color-theme-molokai)

; (if window-system
  ; (color-theme-tangotango)
  ; (color-theme-solarized-dark)
  ; (color-theme-emacs-21)
  ; (color-theme-topfunky)
  ; (color-theme-zenburn)
; )
