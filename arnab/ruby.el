(add-hook 'ruby-mode-hook 'whitespace-mode)

;; automatically add 'end' after class, module, def etc.
;; automatically pair braces, single and double quotes
(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

