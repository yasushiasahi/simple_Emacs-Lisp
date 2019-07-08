(setq e-alist '(("abstract") ("itemize") ("verb") ("verbatim")))
(("abstract") ("itemize") ("verb") ("verbatim"))

(try-completion "a" e-alist)
"abstract"

(try-completion "abstract" e-alist)
t

(try-completion "b" e-alist)
nil

(try-completion "v" e-alist)
"verb"

(try-completion "verb" e-alist)
"verb"

(try-completion "verbose" e-alist)
nil

(defun my-complete-somesymbol ()
  "buffer内に先頭部分だけ入れた単語を保管する"
  (interactive)
  )

(all-completions "v" e-alist)
("verb" "verbatim")


(with-output-to-temp-buffer
    "completion"
    (display-completion-list
     (all-completions "v" e-alist)))
verbnil
