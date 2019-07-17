(require 'package)

;;; Code:
(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      package-enable-at-startup nil)

(when (file-readable-p "~/.emacs.d/README.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/README.org")))

;; expand region
;; emmet

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zerodark)))
 '(custom-safe-themes
   (quote
    ("e39ff005e524c331b08d613109bff0b55fc21c64914c4a243faa70f330015389" default)))
 '(package-selected-packages
   (quote
<<<<<<< HEAD
    (flycheck-inline cargo flycheck-rust racer flycheck rust-mode restclient helm-c-yasnippet yasnippet evil-multiedit neotree helm-projectile groovy-mode dashboard web-mode rjsx-mode company evil-mc fireplace evil-commentary evil-surround helm avy general magit linum-relative evil doom-modeline zerodark-theme which-key use-package))))
=======
    (ace-window cargo flycheck-rust racer flycheck rust-mode restclient helm-c-yasnippet yasnippet evil-multiedit neotree helm-projectile groovy-mode dashboard web-mode rjsx-mode company evil-mc fireplace evil-commentary evil-surround helm avy general magit linum-relative evil doom-modeline zerodark-theme which-key use-package))))
>>>>>>> 9ae3d796a24ef28ae2058dab51116e6fbe880ddf
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
;;; init.el ends here
