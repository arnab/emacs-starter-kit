(require 'rbenv)
;; (global-rbenv-mode)
(custom-set-variables '(ruby-test-ruby-executables (list rbenv-ruby-shim)))

;;; Rspec
(add-hook 'ruby-mode-hook 'rspec-mode)
;; https://github.com/pezra/rspec-mode#zsh-and-rvm
(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

;;; RSpec mode's toggle-file opens in the same window.
;;; Open it in the other one.
(eval-after-load "rspec-mode"
  '(progn
     (defun rspec-toggle-spec-and-target ()
       "Switches to the spec for the current buffer if it is a
        non-spec file, or switch to the target of the current buffer
        if the current is a spec"
       (interactive)
       (find-file-other-window
        (if (rspec-buffer-is-spec-p)
            (rspec-target-file-for (buffer-file-name))
          (rspec-spec-file-for (buffer-file-name)))))))

;;; Do not compile SCSS on save, Rails does that for us
(defvar scss-compile-at-save nil)

;;; treat rabl files as ruby
(setq auto-mode-alist (cons '("\\.rabl$" . ruby-mode) auto-mode-alist))

;;; Add ido-imenu support back into ruby-mode in Emacs24.
;;; See http://stackoverflow.com/q/12703110/
(add-hook 'ruby-mode-hook
          (lambda ()
            (set (make-local-variable imenu-generic-expression)
                 '(("Methods"  "^\\( *\\(def\\) +.+\\)"          1)
                   ))))

;;; flymake ruby code:
;;; http://blog.senny.ch/blog/2012/10/06/emacs-tidbits-for-ruby-developers/
(eval-after-load 'ruby-mode
  '(progn
     ;; Libraries
     (require 'flymake)

     ;; Invoke ruby with '-c' to get syntax checking
     (defun flymake-ruby-init ()
       (let* ((temp-file (flymake-init-create-temp-buffer-copy
                          'flymake-create-temp-inplace))
              (local-file (file-relative-name
                           temp-file
                           (file-name-directory buffer-file-name))))
         (list "ruby" (list "-c" local-file))))

     (push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
     (push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)

     (push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3)
           flymake-err-line-patterns)

     (add-hook 'ruby-mode-hook 'cabbage-flymake-init)

     (add-hook 'ruby-mode-hook
               (lambda ()
                 (when (and buffer-file-name
                            (file-writable-p
                             (file-name-directory buffer-file-name))
                            (file-writable-p buffer-file-name)
                            (if (fboundp 'tramp-list-remote-buffers)
                                (not (subsetp
                                      (list (current-buffer))
                                      (tramp-list-remote-buffers)))
                              t))
                   (local-set-key (kbd "C-c d")
                                  'flymake-display-err-menu-for-current-line)
                   (flymake-mode t))))))
