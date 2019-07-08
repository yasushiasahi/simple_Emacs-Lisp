(defun plus1 (x)
  "引数に1を足したものを返す"
  (if (numberp x)
      (1+ x)
    1))
plus1

(symbol-function 'plus1)
(lambda (x) "引数に1を足したものを返す" (if (numberp x) (1+ x) 1))

(plus1 4)
5

((lambda (x) "引数に1を足したものを返す" (if (numberp x) (1+ x) 1)) 5)
6
