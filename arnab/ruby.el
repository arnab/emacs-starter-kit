;;; RVM
(load "~/.emacs.d/elpa/rvm-1.2/rvm.el")
(rvm-use-default) ;; use rvm’s default ruby for the current Emacs session

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
