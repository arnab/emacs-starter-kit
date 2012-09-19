(require 'package)
(add-to-list 'package-archives

'("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby starter-kit-js
                                  rvm textmate ruby-end ruby-block rspec-mode
                                  scss-mode
                                  color-theme color-theme-monokai
                                  ;; color-theme-railscats color-theme-tango
                                  clojure-mode clojure-test-mode
                                  scala-mode
                                  markdown-mode yaml-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
