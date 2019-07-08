(concat "hello" nil " world")
"hello world"

(substring "abcdefg" 3)
"defg"
(substring "abcdefg" 3 5)
"de"
(substring "abcdefg" -3)
"efg"
(substring "abcdefg" -5 -3)
"cd"
(substring "abcdefg" -5 -10)

(upcase "hogehoge")
"HOGEHOGE"
(downcase "HOGEHOGE")
"hogehoge"

(setq hg "hogehoge")
"hogehoge"

(stringp hg)
t
(stringp 10)
nil

(string-equal "hogehoge" "hogehoge")
t

(eq 1 1)
t
