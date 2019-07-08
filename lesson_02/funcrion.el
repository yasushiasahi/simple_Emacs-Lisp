(defun foo ()
  1 2 nil "foo" 5)
foo

(foo)
5

(defun bar (a b &rest c )
  '((a) (b) (c))
  )
bar

(bar 1 2 3 4 5 6)
((a) (b) (c))

(defun normal-function (a b)
  (message (concat a b)))
normal-function

(normal-function "hoge" "huga")
"hogehuga"

(defun intaractive-function (a b)
  (interactive "sInput string a:\nsInput string b:")
  (interactive "sInput string a:\nsInput string b:")
  (message (concat a b)))
intaractive-function

(defun text-move (arg)
  (interactive "p")
  (forward-char arg))
text-move

(define-key global-map "\C-cf" 'text-move)
text-move

(defun text-move2 (arg)
  (interactive "P")
  (forward-char arg))
text-move2

(define-key global-map "\C-cf" 'text-move2)
text-move2


(defun show-universal-arg (arg)
  (interactive "P")
  (insert arg))

show-universal-arg

(define-key global-map "\C-cf" 'show-universal-arg)
show-universal-arg

hhhhogehoge



(defun test-range (beg end)
  (interactive "r")
  (message "beg=%d, end=%d" beg end))
test-range

(define-key global-map "\C-cf" 'test-range)
test-range


(defun test-string (str)
  (interactive "sInput string: ")
  (insert str))
test-string

(define-key global-map "\C-cs" 'test-string)
test-string

hogehoge
