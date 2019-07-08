;(insert (read-string "入力してね: " "例)うんこ"))	; => nil
(y-or-n-p "")				; => nil

(read-file-name "rfn: ")
"~/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_05/うんこ.el"

(read-file-name "rfn: " "~/うんこ/")
"~/うんこ/おしっこ.el"

(read-file-name "rfn: " "~/うんこ/" "はなくそ")
""
"はなくそ"

(read-buffer "rb: ")
"text"
""

(read-command "rc: ")
describe-key


'(("山形県" . "甲府市") ("神奈川県" . "横浜市") ("茨城県" . "水戸市"))
(("山形県" . "甲府市") ("神奈川県" . "横浜市") ("茨城県" . "水戸市"))

(let ((wday-alist '(("Sunday") ("Monday") ("Thesday") ("Wednesday") ("Thursday") ("Friday") ("Saturday")))
      (completion-ignore-case t))
  (completing-read "What day?: " wday-alist nil t))
"Friday"

(defun my-select-start-s (wday)
  (string-match "^S" (car wday)))
my-select-start-s


(let ((wday-alist '(("Sunday") ("Monday") ("Thesday") ("Wednesday") ("Thursday") ("Friday") ("Saturday")))
      (completion-ignore-case t))
  (completing-read "What day?: " wday-alist 'my-select-start-s t))
"Saturday"

(let ((wday-alist '(("Sunday") ("Monday") ("Thesday") ("Wednesday") ("Thursday") ("Friday") ("Saturday")))
      (completion-ignore-case t))
  (completing-read "What day?: " wday-alist 'my-select-start-s 1))
"Saturday"

(let ((wday-alist '(("Sunday") ("Monday") ("Thesday") ("Wednesday") ("Thursday") ("Friday") ("Saturday")))
      (completion-ignore-case t)
      (today (substring (current-time-string) 0 3)))
  (completing-read "What day?: " wday-alist 'my-select-start-s t today))
"Sunday"
