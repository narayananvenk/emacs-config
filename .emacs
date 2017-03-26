(setq inhibit-startup-screen t)
(setq tab-width 8)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'js-indent-level 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(defvaralias 'css-indent-offset 'tab-width)
(define-key global-map (kbd "RET") 'newline-and-indent)
(electric-indent-mode 1)
(global-set-key (kbd "TAB") 'self-insert-command)
(define-key global-map [?\M-\`] 'execute-extended-command)

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
 '(package-selected-packages
   (quote
    (markdown-mode move-text scala-mode swift-mode json-mode web-mode groovy-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo")))))

(defalias 'wm 'whitespace-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ftl?\\'" . web-mode))

(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)] 'move-text-up)
(global-set-key [(meta down)] 'move-text-down)

(global-linum-mode 1)
