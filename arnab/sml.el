(defun isml ()
  "If sml repl exists, then restart it else create a new repl."
  (interactive)
  (when (get-buffer "*sml*")
    (with-current-buffer "*sml*"
      (when (process-live-p "sml")
        (comint-send-eof)))
    (sleep-for 0.2))
  (sml-run "sml" ""))

(defadvice sml-prog-proc-load-file
  (before fresh-sml-repl-then-load-file activate compile)
  "create a new repl before reload the file."
  (isml))
