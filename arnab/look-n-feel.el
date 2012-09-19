;; http://www.emacswiki.org/emacs/ColorTheme#toc1
(load "~/.emacs.d/elpa/color-theme-6.5.5/color-theme.el")
(load "~/.emacs.d/elpa/color-theme-monokai-0.0.5/color-theme-monokai.el")
(load "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
(color-theme-molokai)

(defun fontify-frame (frame)
  ;; Cinema Display
    (set-frame-parameter frame 'font "Inconsolata 20")
  ;; Retina native display
  ;; (set-frame-parameter frame 'font "Inconsolata 16")
  )
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

(blink-cursor-mode 1)
