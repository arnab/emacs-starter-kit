(require 'package)

;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings
                                  starter-kit-eshell starter-kit-js
                                  ;; starter-kit-ruby ruby-end ruby-block
                                  auto-complete smartparens
                                  ag bm unfill csv-mode buffer-move dash-at-point
                                  magit textmate helm helm-ls-git
                                  rainbow-delimiters
                                  rbenv enh-ruby-mode
                                  js2-mode ac-js2 js-comint
                                  clojure-mode clojure-test-mode cider ac-nrepl
                                  sml-mode scala-mode2 ensime geiser ac-geiser
                                  io-mode erlang haskell-mode
                                  markdown-mode yaml-mode
                                  scss-mode rainbow-mode web-mode
                                  zenburn-theme heroku-theme
                                  molokai-theme monokai-theme solarized-theme
                                  tango-2-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(coffee-command "/usr/local/share/npm/bin/coffee")
 '(coffee-tab-width 2)
 '(custom-safe-themes (quote ("31d3463ee893541ad572c590eb46dcf87103117504099d362eeed1f3347ab18f" "427234e4b45350b4159575f1ac72860c32dce79bb57a29a196b9cfb9dd3554d9" "bad832ac33fcbce342b4d69431e7393701f0823a3820f6030ccc361edd2a4be4" "47583b577fb062aeb89d3c45689a4f2646b7ebcb02e6cb2d5f6e2790afb91a18" "3c67d690c2d801885c06f00c99c7a12c3490ce3b655be3fdc8ecc4fe0ff55706" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "fa189fcf5074d4964f0a53f58d17c7e360bb8f879bd968ec4a56dc36b0013d29" "60a2ebd7effefeb960f61bc4772afd8b1ae4ea48fae4d732864ab9647c92093a" "88b663861db4767f7881e5ecff9bb46d65161a20e40585c8128e8bed8747dae5" "fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(org-agenda-files (quote ("~/Dropbox/org-mode/work-stuff.org")))
 '(ruby-test-ruby-executables (list rbenv-ruby-shim)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
