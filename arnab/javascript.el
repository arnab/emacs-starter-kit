(require 'js-comint)
(setq inferior-js-program-command "node")
;;; Fix prompt: http://stackoverflow.com/a/16632586/117750
(setenv "NODE_NO_READLINE" "1")
