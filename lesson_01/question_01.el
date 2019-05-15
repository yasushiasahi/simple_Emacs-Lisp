(defun runekich-mode()
  (interactive)
  (setq major-mode 'runekich-mode
	mode-name "るねきちモード")
  (setq runekich-mode-map (make-sparse-keymap))
  (define-key runekich-mode-map "a" 'insert-iam)
  (use-local-map runekich-mode-map)
  )

(defun insert-iam()
  (interactive)
  (insert "僕るねきちナリ")
  )
