(load-theme 'molokai t)
(blink-cursor-mode 1)

(require 'dash)
(defun font-candidate (&rest fonts)
  "Return the first available font."
  (--first (find-font (font-spec :name it)) fonts))

(defun fontify-frame (frame)
  (interactive)
  (if window-system
      (progn
        (set-face-attribute 'default nil :font
                    (font-candidate '"Source Code Pro-18"
                                    "DejaVu Sans Mono-18"
                                    "Droid Sans Mono-18"
                                    "Consolas-18" )))))
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)
