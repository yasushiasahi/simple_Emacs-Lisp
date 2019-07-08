(expt 2 23)
8388608
(expt 2 61)
-2305843009213693952
(expt 2 28)
268435456
(expt 2 20)
1048576
(expt 2 29)
536870912

(setq x 5)

(+ 2 x)
7

(1+ x)
6

x
5

(- x 2)
3

(1- x)
4

(* 2 x)
10

(/ 10 x)
2

(% 10 x)
0

(% 8 x)
3

(/ 10 3)
3

(/ 10 3.0)
3.3333333333333335

(/ 10.0 3)
3.3333333333333335

(setq a 10
      b 3)
3

(/ a b)
3

(/ (float a) b)
3.3333333333333335

(float 10)
10.0

(round 2.4)
2

(round 2.6)
3

(round 2.5)
2

(round 2.52)
3

(fround 2.52)
3.0

(floor 2.843)
2

(floor (+ 0.5 2.843)) ;四捨五入
3

(ceiling 2.435)
3

(truncate 2.43535)
2

(abs -4)
4

(= 2 2)
t

(= 2 3)
nil

(< 2 3)
t

(numberp 3)
t

(numberp "hoge")
nil

(integerp 3)
t

(integerp 3.4)
nil

(integerp 3.0)
nil

(floatp 3.4)
t

(floatp 3)
nil

(floatp 3.0)
t

(random)
-766752815209930965
1235550089144981895

(random t)
1887079812933941791

(random 5)
3

4

3

2

(max 4 5 7 44 6 9)
44

(min 4 5 7 44 6 9)
4

(string-to-number "99")
99

(string-to-number "99.99")
99.99

(string-to-number "99.99hogeho")
99.99

(string-to-number "hogehoge")
0

(string-to-number "0")
0

(number-to-string 99.99)
"99.99"
"99"

(format "￥%d（税込）" 100)
"￥100（税込）"
