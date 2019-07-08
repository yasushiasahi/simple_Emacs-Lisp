(current-time-string)
"Thu May 16 02:10:58 2019"

(message "こんにちは%sさん" "zero")
"こんにちはzeroさん"

(defun foo ()
  (interactive)
  (message "This key is [\%s]" (this-command-keys)))
foo

(global-set-key "\C-ca" 'foo)
foo

(global-set-key "\C-cb" 'foo)
foo

(defun sleep ()
  (insert "start\n")
  (sleep-for 3)
  (insert "end"))
sleep

(sleep)
start
endnil

(sit-for 1)
t

(ding)
nil
