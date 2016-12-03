(setq tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(defvaralias 'js-indent-level 'tab-width)
(defvaralias 'css-indent-offset 'tab-width)
(define-key global-map (kbd "RET") 'newline-and-indent)
(electric-indent-mode 1)
(global-set-key (kbd "TAB") 'self-insert-command)

(add-hook 'html-mode-hook
	  (lambda ()
	    (set (make-local-variable 'sgml-basic-offset) 8)))

(require 'package)
(add-to-list 'package-archives
         '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (groovy-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
