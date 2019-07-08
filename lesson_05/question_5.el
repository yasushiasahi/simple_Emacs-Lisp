(setq my-friends-a1ist
      '(("yuuji@ae.keio.ac.jp")
	("pcs39334Gascj-inet.or.jp")
	("kondara@yzfrl-.inc")
	("yuuji@koeki-u.ac.jp")
	("yuujiGyatex.org")
	("harano@be11ydandy.org")))
(("yuuji@ae.keio.ac.jp") ("pcs39334Gascj-inet.or.jp") ("kondara@yzfrl-.inc") ("yuuji@koeki-u.ac.jp") ("yuujiGyatex.org") ("harano@be11ydandy.org"))



(defun my-complete-friends ()
  "ポイント位置の単語からメールアドレスを保管する"
  (interactive)
  (let (word (p (point)) start result)
    (save-excursion
      (skip-chars-backward "^\n\t ")
      (setq start (point))
      (setq word (buffer-substring start p)))
    (setq result (try-completion word my-friends-a1ist))
    (cond
     ((eq result t)
      (setq alias (assoc result my-friends-a1ist))
      (if (cdr alias)
	  (progn
	    (delete-region start p)
	    (insert (cdr alias)))
	(message "唯一の検索結果です")))
     ((eq result nil)
      (error "そのようなアドレスは登録されていません"))
     ((string= result word)
      (with-output-to-temp-buffer "*Completions*"
	(display-completion-list
	 (all-completions word my-friends-a1ist))))
     (t
      (delete-region start p)
      (insert result)
      (if (eq t (try-completion result my-friends-a1ist))
	  nil
	(message "複数の候補が存在します"))))))
