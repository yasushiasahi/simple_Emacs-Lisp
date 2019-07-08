(defun walkdir ()
  (interactive)
  (let ((dirs (directory-files "~/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_06")) win buf file)
    (setq buf (get-buffer-create "*walkdir*"))
    (setq win (split-window))
    (set-window-buffer win buf)
    (select-window win)
    (setq default-directory "~/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_06")
    (while dirs
      (setq file (car dirs))
      (insert file)
      (move-to-column 32 t)
      (if (file-directory-p file)
	  (insert "ファイルです\n")
	(save-excursion
	  (set-buffer (get-buffer-create "*tmp*"))
	  (insert-file-contents file nil 0 80)
	  (skip-chars-forward " \n\t")
	  (setq header (buffer-substring (point) (progn (end-of-line) (point)))))
	(insert (format "%s\n" header)))
      (setq dirs (cdr dirs)))))



(defun walddir-next-line (arg)
  (interactive "p")
  ())
