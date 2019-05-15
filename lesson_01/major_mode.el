(defun my-mode ()
  (interactive)
  (setq major-mode 'my-mode
	mode-name "私のもーど")
  (setq my-local-map (make-sparse-keymap))
  (define-key my-local-map "h" 'backward-char)
  (define-key my-local-map "j" 'previous-line)
  (define-key my-local-map "k" 'next-line)
  (define-key my-local-map "l" 'forward-char)
  (define-key my-local-map "\C-ch" 'hello-world)
  (use-local-map my-local-map)
  )


(defun hello-world ()
  (interactive)
  (insert "Hello, World!\n"))
