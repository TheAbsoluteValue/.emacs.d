(require 'package)

(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      package-enable-at-startup nil)

(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(setq scroll-conservatively 100)
 
(setq ring-bell-function 'ignore)
 
(global-hl-line-mode t)
 
(defalias 'yes-or-no-p 'y-or-n-p)
 
(global-set-key (kbd "<s-return>") 'ansi-term)
 
(use-package which-key
  :init
  (which-key-mode))

(use-package zerodark-theme
  :init
    (load-theme 'zerodark t))
 
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(global-subword-mode 1)
 
(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

;; multiple cursors
;; spaceline?
;; expand region
;; helm
;; projectile
;; evil?
;; zap to char
;; avy
;; emmet
;; magit

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
