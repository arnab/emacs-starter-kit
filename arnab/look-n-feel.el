;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (load-theme 'solarized-light t)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(set-frame-parameter nil 'font "DejaVu Sans Mono-10")

(add-to-list 'default-frame-alist '(font . "Source Code Pro-15"))
(set-frame-parameter nil 'font "Source Code Pro-15")

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
