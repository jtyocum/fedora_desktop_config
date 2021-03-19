(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(yaml-mode markdown-mode blacken company eglot)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Dark Background (Terminal)
(unless (display-graphic-p)
    (setq frame-background-mode 'dark))

; CUA
(cua-mode t)

; Company
(add-hook 'after-init-hook 'global-company-mode)

; Eglot
(with-eval-after-load "eglot"
    (add-to-list 'eglot-server-programs
        '(python-mode . ("/home/jtyocum/.venv/py3dev/bin/pyls"))))

; Python
(setq python-shell-interpreter "/home/jtyocum/.venv/py3dev/bin/python3"
      python-shell-interpreter-args "-i")
(add-hook 'python-mode-hook 'eglot-ensure)

(setq blacken-executable "/home/jtyocum/.venv/py3dev/bin/black")

