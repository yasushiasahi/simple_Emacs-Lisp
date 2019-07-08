hellonil
nil
0
(bobp)
nil
(eobp)
t
(bolp)
t
(eolp)
t

(forward-char 10)










ほげほげほげほげ76
nil

(backward-char)nil

(forward-line)

0
(forward-line 5)


0

(search-forward "min")


0
(forward-line -5)

()

(progn ()
(while (not (bobp))
  (forward-line -1)
  )
(while (not (eobp))
  (insert "ぜろ")
  (forward-line 1)
  )
)

(forward-sexp)

nil
(backward-sexp)

(point)
336

(mark t)
356

(region-beginning)
341

(region-end)
392

(point-max)
420

(point-min465
)
1

(let (p)
  (setq p (point))
  (goto-char (point-min))
  (insert "point-min")
  (goto-char p))

(save-excursion
  (goto-char (point-min))
  (insert "hello"))
nil

(goto-line 3)

(count-lines (point-min) (point))
90

(move-to-window-line)

(beginning-of-line)
nil

(end-of-line)
nil

(move-to-column 2)
0

(move-to-column 100 t)
												    100

0

(current-column)
0

(skip-chars-forward "^max")



(search-backward "min")

(let ((case-fold-search t))
  (save-excursion
    (if (search-forward "max" nill t)
	(insert "みつけた")
      (insert "見つけなかった"))))
