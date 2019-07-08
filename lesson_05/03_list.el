'(foo t "bar" 5)

'(nil (foo t "bar" 5) 1.25)
(nil (foo t "bar" 5) 1.25)

(setq x '(nil (foo t "bar" 5) 1.25))
(nil (foo t "bar" 5) 1.25)

x
(nil (foo t "bar" 5) 1.25)

'(x)
(x)

(setq x (cons 'new-element x))
(new-element nil (foo t "bar" 5) 1.25)

(list nil 5 t)
(nil 5 t)

(list nil (list 'foo t "bar" 5) 1.25)
(nil (foo t "bar" 5) 1.25)

(car x)
new-element

(cdr x)
(nil (foo t "bar" 5) 1.25)

(setq v (list 1 2 3))
(1 2 3)

(car v)
1

(cdr v)
(2 3)

(cons (car v) (cdr v))
(1 2 3)

(let ((sum 0) (list '(1 2 3 4 5 6 7 8 9 10)))
  (while list
    (setq sum (+ sum (car list)))
    (setq list (cdr list))
    (message "list = %s" list)
    (sit-for 0.5))
  (message "sum = %d" sum))
"sum = 55"

(setq l '(1 2 3 4 5 6 7 8 9 10))
(1 2 3 4 5 6 7 8 9 10)

(let ((list l) el new-list)
  (while list
    (setq el (car list))
    (setq new-list (append new-list (list (* el 2))))
    (setq list (cdr list)))
  (message "new-list = %s" new-list))
"new-list = (2 4 6 8 10 12 14 16 18 20)"

l
(1 2 3 4 5 6 7 8 9 10)

(setq ll '(1 2 3 4 5 6 7 8 9 10))
(1 2 3 4 5 6 7 8 9 10)

(setq lll '(1 2 3 4 5 6 7 8 9 10 11))
(1 2 3 4 5 6 7 8 9 10 11)

(equal l ll)
t

(equal ll lll)
nil

(eq l ll)
nil

(eq 'foo 'foo)
t

(eq 5 5)
t

(eq 5.0 5.0)
nil

(eq "abc" "abc")
nil

(defun my-completing-buffur-word ()
  (save-excursion
    (goto-char (point-min))
    (let (word word-alist)
      (while (re-search-forward "\\([a-z]?\\)" nil t)
	(setq word (match-beginning 0))
	(setq word-alist (append word-alist (list word)))))))

(my-completing-buffur-word)

(defun my-check-member-alist (word word-alist)
  (let ((list word-alist) element (found nil))
    (while list
      (setq element (car list))
      (setq list (cdr list))
      (if (equal element word)
	  (setq found t)))
    found))
my-check-member-alist

my-check-member-alist



(setq wal '("奈良" "滋賀" "和歌山"))
("奈良" "滋賀" "和歌山")


(my-check-member-alist "奈良" wal)
t

(my-check-member-alist "大阪" wal)
nil


nil


"和歌山"


(defun my-check-member-alist (word alist)
  (let (element)
    (catch 'found
      (while alist
	(setq element (car (car alist)))
	(if (equal element word)
	    (throw 'found t))
	(setq alist (cdr alist))))))
my-check-member-alist

my-check-member-alist

(setq member-alist '(("hoge") ("hero") ("tako")))
(("hoge") ("hero") ("tako"))


(my-check-member-alist "hoge" member-alist)
t

(my-check-member-alist "guga" member-alist)
nil



nil

(defun my-completing-buffer-word ()
  "buffer内の単語を全て拾ってそれらを保管入力する関数"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let (word word-alist)
      (while (re-search-forward "\\w+" nil t)
	(setq word (match-string 0))
	(if (not (my-check-member-alist word word-alist))
	    (setq word-alist (cons (list word) word-alist))))
      (message "word-alist = %s" word-alist)
      (sit-for 1)
      (completing-read "単語?: " word-alist))))
my-completing-buffer-word

'(1 . (2 3))
(1 2 3)

(cons 1 '(2 3))
(1 2 3)

'(1 . (2 . (3)))
(1 2 3)


(setq pref-alist
      '(("山梨県" . "甲府市") ("神奈川県" . "横浜市") ("山形県" . "山形市") ("愛知県". "名古屋市") ("茨城県" . "水戸市")))
(("山梨県" . "甲府市") ("神奈川県" . "横浜市") ("山形県" . "山形市") ("愛知県" . "名古屋市") ("茨城県" . "水戸市"))

(assoc "山形県" pref-alist)
("山形県" . "山形市")

(rassoc "山形市" pref-alist)
("山形県" . "山形市")

(delete 'foo '(foo bar foo t))
(bar t)

(assoc "広島県" pref-alist)
nil


(setq pref-alist
      (delete (assoc "愛知県" pref-alist) pref-alist))
(("山梨県" . "甲府市") ("神奈川県" . "横浜市") ("山形県" . "山形市") ("茨城県" . "水戸市"))

(member (assoc "茨城県" pref-alist) pref-alist)
(("茨城県" . "水戸市"))


(reverse pref-alist)
(("茨城県" . "水戸市") ("山形県" . "山形市") ("神奈川県" . "横浜市") ("山梨県" . "甲府市"))


(nth 2 pref-alist)
("山形県" . "山形市")

(mapcar '(lambda (v) (format "%sは田舎" v)) pref-alist)

(null '())
t

(atom nil)
t

(atom 'hoge)
t

(listp pref-alist)
t

(atom 5)
t

(atom "hoge")
t

(listp "hoge")
nil

(defun my-completing-buffer-word ()
  "buffer内の単語を全て拾ってそれらを保管入力する関数"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let (word word-alist)
      (while (re-search-forward "\\w+" nil t)
	(setq word (match-string 0))
	(if (not (assoc word word-alist))
	    (setq word-alist (cons (list word) word-alist))))
      (message "word-alist = %s" word-alist)
      (sit-for 1)
      (completing-read "単語?: " word-alist))))
my-completing-buffer-word
