(setq plus_one (lambda (x) "引数に1を足したものを返す" (if (numberp x) (1+ x) 1)))
(lambda (x) "引数に1を足したものを返す" (if (numberp x) (1+ x) 1))

(set 'foo "Hello")
"Hello"

'foo
foo

foo
"Hello"

(setq bar "Hello")
"Hello"

bar
"Hello"

(setq hoge "ほげ"
      fuga "ふが")
"ふが"

hoge
"ほげ"

fuga
"ふが"

(defvar unko 1 "実験用")
unko

unko
1

(defvar unko 2 "実験用")
unko

unko
1

(defvar hoge 2 "実験用")
hoge

hoge
"ほげ"

(defvar unko 3)

unko
3


(defvar foo "こんにちは")
foo

foo
"Hello"

(let ((make-backup-files t) write-file-hooks)
  (save-buffer))
nil

(setq foo 5)
5

foo
5

(let ((foo 3) (bar foo))
  bar)
5

(let* ((foo 3) (bar foo))
  bar)
3

(setq x 5)
5

(defun subfunc ()
  (insert (format "x is [%d] in subfunc\n" x)))
subfunc


(defun main ()
  (let ((x 3))
    (insert (format "x is [%d] in main\n" x))
    (subfunc)))
main

(main)
x is [3] in main
x is [3] in subfunc
nil
