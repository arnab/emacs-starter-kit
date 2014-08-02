(load-theme 'tango-2 t)
;; (load-theme 'whiteboard t)
(blink-cursor-mode 1)

(require 'dash)
(defun font-candidate (&rest fonts)
  "Return the first available font."
  (--first (find-font (font-spec :name it)) fonts))

(defun fontify-frame (frame)
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 2000)
            (set-face-attribute 'default nil :font
                                (font-candidate '"Fira Mono-18"
                                                "Source Code Pro-18"
                                                "DejaVu Sans Mono-18"
                                                "Droid Sans Mono-18"
                                                "Consolas-18"))
          (set-face-attribute 'default nil :font
                              (font-candidate '"Fira Mono-14.5"
                                              "Source Code Pro-14.5"
                                              "DejaVu Sans Mono-14.5"
                                              "Droid Sans Mono-14.5"
                                              "Consolas-14.5"))))))

;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; (setq longlines-show-hard-newlines t)
(setq fill-column 100)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
