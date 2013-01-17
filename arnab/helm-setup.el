(add-to-list 'load-path "~/.emacs.d/elpa/helm-20130114.2254")
(require 'helm-config)
(helm-mode 1)

(add-to-list 'load-path "~/.emacs.d/elpa/helm-ls-git-20130114.1739")
(require 'helm-ls-git)

;;;###autoload
(defun helm-mini ()
  "My additions (all git file) to Preconfigured `helm' lightweight version \(buffer -> recentf\)."
  (interactive)
  (require 'helm-files)
  (helm-other-buffer '(helm-c-source-buffers-list
                       helm-c-source-recentf
                       helm-c-source-ls-git-status
                       helm-c-source-ls-git
                       helm-c-source-buffer-not-found)
                     "*helm mini*"))
