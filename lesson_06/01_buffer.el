(get-buffer "*scratch*")
#<buffer *scratch*>

(get-buffer "*うんこ*")
nil

(get-buffer-create "*うんこ*")
#<buffer *うんこ*>

(generate-new-buffer "*てんぷ*")
#<buffer *てんぷ*>

(buffer-name)
"01_buffer.el"

(let ((b (generate-new-buffer "foo")))
  (set-buffer b)
  (message "Current buffer is %s" (buffer-name)))

(switch-to-buffer "unko")

(save-excursion
  (switch-to-buffer "*switch*")
  (insert "I'm in switch buffer")
  )

(save-current-buffer
  (switch-to-buffer "*switch*")
  (insert "I'm in switch buffer"))
nil

nil

buffer-file-name
"/Users/zero.asahi/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_06/01_buffer.el"

(buffer-file-name)
"/Users/zero.asahi/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_06/01_buffer.el"

(buffer-modified-p)
t

(set-buffer-modified-p nil)
nil

(kill-buffer "unko")
t

(buffer-list)


(save-excursion
  (let (buffer (blist (buffer-list)))
    (while blist
      (setq buffer (car blist))
      (set-buffer buffer)
      (insert "hello %s" (buffer-name))
      (setq blist (cdr blist)))))

(save-excursion
  (let ((blist (buffer-list)) flist)
    (while blist
      (set-buffer (car blist))
      (if (buffer-file-name)
	  (setq flist (cons (buffer-file-name) flist)))
      (setq blist (cdr blist)))
    flist))


(buffer-local-variables)
((buffer-display-time 23777 9382 522999 0) (buffer-display-count . 23) (buffer-invisibility-spec . t) (buffer-file-truename . "~/dev/src/github.com/yasushiasahi/simple_Emacs-Lisp/lesson_06/01_buffer.el") (point-before-scroll) (buffer-auto-save-file-format . t) (buffer-file-format) (buffer-file-coding-system . utf-8-unix) (enable-multibyte-characters . t) (mark-active) (bidi-paragraph-direction . left-to-right) (local-abbrev-table . [## 0 0 0 0 0 0 0 0 0 0 0 ...]) ...)
#<buffer 01_buffer.el>
