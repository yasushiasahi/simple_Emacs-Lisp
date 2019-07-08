(current-time-string)			; => "Sun May 19 02:04:54 2019"

;; (defun my-search-stamp ()
;;   (interactive)
;;   (goto-char (point-min))
;;   (re-search-forward "修正時刻: \\([A-Z][a-z][a-z]\\) [A-z][a-z][a-z][ 0-9]?[0-9] [0-2][0-9]:[0-5][0-9]:[0-5][0-9] [1-9][0-9][0-9][0-9]")
;;   (goto-char (match-beginning 1)))

(defun my-serch-stamp2 ()
  "日付検索"
  (interactive)
  (let ((p (point)))
    (goto-char (point-min))
    (if (re-search-forward "修正時刻: \\([A-Z][a-z][a-z]\\) [A-z][a-z][a-z] [ 0-9]?[0-9] [0-2][0-9]:[0-5][0-9]:[0-5][0-9] [1-9][0-9][0-9][0-9]" nil t)
	(goto-char (match-beginning 1))
      (goto-char p)
      nil)))

(defun my-search-stamp3 ()
  "タイムスタンプを書き換える"
  (let ((p (point)))
    (goto-char (point-min))
    (if (re-search-forward "修正時刻: \\([A-Z][a-z][a-z]\\).*[12][0-9][0-9][0-9]\\?$" nil t)
	(if (match-beginning 1)
	    (goto-char (match-beginning 1))
	  (goto-char (match-end 0)))
      (goto-char p)
      nil)))

(defun my-update-stamp ()
  "タイムスタンプを更新"
  (interactive)
  (save-excursion
    (if (my-search-stamp3)
	(progn
	  (delete-region (point) (progn (end-of-line) (point)))
	  (insert (current-time-string))))))
