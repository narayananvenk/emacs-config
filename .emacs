(setq tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(defvaralias 'js-indent-level 'tab-width)
(defvaralias 'css-indent-offset 'tab-width)
(define-key global-map (kbd "RET") 'newline-and-indent)
(electric-indent-mode 1)

(add-hook 'html-mode-hook
	  (lambda ()
	    (set (make-local-variable 'sgml-basic-offset) 8)))
