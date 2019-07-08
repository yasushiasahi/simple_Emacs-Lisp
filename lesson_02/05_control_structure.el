(defun cond-func ()
    (cond
     (var-a (insert "A!"))
     (var-b (insert "B!"))
     (var-c (insert "C"))
     (t (insert "NO!") (ding))))
cond-func

(cond-func)

(setq var-a t)
t

(cond-func)
A!nil

(setq var-b t)
t

(cond-func)
A!nil

(setq var-a nil)
nil

(cond-func)
B!nil

(setq var-b nil)
nil

(cond-func)

(setq var-c nil)
nil

(cond-func)
NO!nil

(let ((i ?a))
  (while (<= i ?z)
    (insert i)
    (setq i (1+ i))))
abcdefghijklmnopqrstuvwxyznil

(progn (setq i 1) (setq j 2) (setq k 3))
3

(prog1 (setq i 1) (setq j 2) (setq k 3))
1

(prog2 (setq i 1) (setq j 2) (setq k 3))
2

(let (found)
  (while (and (not found) (not (eobp)))
    (if (check-line)
	(setq found t)
      (forward-line 1))
    (if found
	)))

(let ((cb (current-buffer)))
  (prog1 (progn
	   (find-file "~/prettier.config.js")
	   (sit-for 1))
    (kill-buffer (current-buffer))
    (switch-to-buffer cb)))

t

(let ((cb (current-buffer)))
  (unwind-protect (progn
	   (find-file "~/prettier.config.js")
	   (sit-for 1))
    (kill-buffer (current-buffer))
    (switch-to-buffer cb)))

(setq lune-mode-map (make-sparse-keymap))
(defun lune-mode ()
  (interactive)
  (setq mejor-mode 'lune-mode
	mode-name "るねきちモード")

  (let* ((key ?a))
    (while (<= key 122)
      (define-key lune-mode-map (char-to-string key) 'i-am-lune
	(setq key (1+ key)))))
  (use-local-map lune-mode-map))
lune-mode

(defun i-am-lune ()
  (interactive)
  (insert "ルネ基地天才"))
i-am-lune
