(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
 
(setq scroll-conservatively 100)
 
(setq ring-bell-function 'ignore)
 
(global-hl-line-mode t)
 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
 
(unless (package-installed-p 'zerodark-theme)
  (package-refresh-contents)
  (package-install 'zerodark-theme))
 
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
 
(defalias 'yes-or-no-p 'y-or-n-p)
 
(global-set-key (kbd "<s-return>") 'ansi-term)
 
(use-package which-key
  :ensure t
  :init
  (which-key-mode))
 
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zerodark)))
 '(custom-safe-themes
   (quote
    ("e39ff005e524c331b08d613109bff0b55fc21c64914c4a243faa70f330015389" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
