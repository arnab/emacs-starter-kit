;; For Emacs from source. Opens files in the existing frame.
;;(setq ns-pop-up-frames nil)

;; Save backups in one place
;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
  (concat "/var/tmp/emacs_autosaves/" (user-login-name) "/"))
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/var/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(prefer-coding-system 'utf-8)

(require 'line-num)

(provide 'arnab/meta)
