(defun fold-within5 ()
  "5桁で折り返す"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (not (eobp))
      (move-to-column 5)
      (newline 1)
      (next-line 1))))
