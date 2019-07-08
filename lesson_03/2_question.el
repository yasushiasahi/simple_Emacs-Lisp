(defvar lune-mode-map (make-sparse-keymap))

(defun lune-mode()
  "るねきちモードだよー！"
  (interactive)
  (setq major-mode 'lune-mode
	mode-name "るねきちモード")
  (use-local-map lune-mode-map))

(defun lune-jibaku ()
  "自爆関数"
  (interactive)
  (let ((visible-bell t))
    (ding)
    (sleep-for 1)
    (ding)
    (sleep-for 1)
    (ding)
    (sleep-for 1)
    (erase-buffer)
    (message "自爆！")))

(defun lune-i-am ()
  "「るねきちAなり」を検索してカウントを増やす。なければ新規挿入"
  (interactive)
  (let ((p (point)) n (thiskey (upcase (this-command-keys))))
    (goto-char (point-min))
    (if (re-search-forward
	 (format "るねきち%s\\([0-9]*\\)ナリ" thiskey) nil t)
	(if (match-beginning 1)
	    (progn
	      (setq n (match-beginning 1))
	      (setq n (+ (string-to-number n) 1))
	      (goto-char (1- (match-beginning 1)))
	      (delete-region
	       (point)
	       (match-end 1))
	      (insert (format "%s%d" thiskey n)))
	  (delete-region
	   (match-beginning 0) (match-end 0))
	  (insert (format "るねきち$s2なり" thiskey)))
      (insert (format "るねきち%sなり" thiskey)))))
