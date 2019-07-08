(defun my-calc ()
  (interactive)
  (save-excursion
    (let (col (sum 0) n)
      (goto-char (point-min))
      (save-excursion
	(re-search-forward "^--END")
	(setq end (point)))
      (re-search-forward "^--BEGIN$")
      (while (re-search-forward "\\(^--END\\)\\|\\([0-9]+$\\)" end t)
	(cond
	 ((match-beginning 2)
	  (setq n (match-string 2))
	  (setq n (string-to-number n))
	  (goto-char (match-beginning 2))
	  (skip-chars-backward " \t")
	  (delete-region
	   (point)
	   (progn (end-of-line) (point)))
	  (move-to-column 70 t)
	  (insert (format "%5d" n))
	  (setq sum (+ sum n)))

	 ((match-beginning 1)
	  (delete-region
	   (point)
	   (progn (end-of-line) (point)))
	  (move-to-column 70 t)
	  (insert (format "%5d" sum))))))))

(defun my-point-test ()
  (interactive)
  (let (end)
    (goto-char (point-min))
    (save-excursion
      (search-forward "--END")
      (goto-char (match-beginning 0))
      (setq end (point))
      (message "End is %d" (point))
      (sit-for 3))
    (while (< (point) end)
      (insert "Text!!")
      (forward-line 1))
    (goto-char end)))


(make-marker)				; => #<marker in no buffer>
(setq m (make-marker))		; => #<marker in no buffer>
(set-marker m (point))		; => #<marker at 1286 in 04_move-search.el>
(setq m2 (point-marker))	; => #<marker at 1364 in 04_move-search.el>
(marker-position m)		; => 1286
(marker-buffer m)		; => #<buffer 04_move-search.el>
(marker-position m2)		; => 1364
(marker-buffer m2)		; => #<buffer 04_move-search.el>
(integer-or-marker-p m)		; => t
(integer-or-marker-p (point))	; => t
(integer-or-marker-p "マーカー")	; => nil


(defun my-marker-test ()
  (interactive)
  (let (end)
    (goto-char (point-min))
    (save-excursion
      (search-forward "--END")
      (goto-char (match-beginning 0))
      (setq end (point-marker))
      (message "end is %d" (point))
      (sit-for 3))
    (while (< (point) end)
      (insert "Test!!")
      (forward-line 1))
    (goto-char end)
    (set-marker end nil)))

(defun my-narrowing-text ()
  (interactive)
  (goto-char (point-min))		; =>
  (save-restriction
    (save-excursion
      (search-forward "--END")		; =>
      (goto-char (match-beginning 0))	; =>
      (narrow-to-region (point-min) (point)) ; =>
      (message "End is %d" (point))	     ; =>
      (sit-for 3))			     ; =>
    (while (not (eobp))
      (insert "Text!!")			; =>
      (forward-line 1))))		; => my-narrowing-text
