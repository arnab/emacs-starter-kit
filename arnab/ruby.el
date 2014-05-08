;;; rbenv
(setq rbenv-installation-dir "/usr/local/opt/rbenv/")
(require 'rbenv)
(global-rbenv-mode)
(custom-set-variables '(ruby-test-ruby-executables (list rbenv-ruby-shim)))

;;; saner indentation for Ruby: http://j.mp/1irQ8cu
(setq ruby-deep-indent-paren nil)

;;; Robe
;;; Use https://gist.github.com/gnufied/7228158
(require 'robe)
(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; ;;; enhanced ruby mode
(setq enh-ruby-program "/usr/local/opt/rbenv/versions/2.1.0/bin/ruby")
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

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
