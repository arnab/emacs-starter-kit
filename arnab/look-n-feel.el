;; https://github.com/technomancy/emacs-starter-kit/issues/90
(setq default-frame-alist
  '((top . 100) (left . 100)))

;; http://www.emacswiki.org/emacs/ColorTheme#toc1
(load "~/.emacs.d/elpa/color-theme-6.5.5/color-theme.el")
;; (load "~/.emacs.d/elpa/color-theme-monokai-0.0.5/color-theme-monokai.el")
(load "~/.emacs.d/elpa/color-theme-molokai-0.1/color-theme-molokai.el")
(color-theme-molokai)

(defun fontify-frame (frame)
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 2000)
            (set-frame-parameter frame 'font "Inconsolata 19") ;; Cinema Display
         (set-frame-parameter frame 'font "Inconsolata 15.5")))))

  ;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

(blink-cursor-mode 1)
