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

; CUA
(cua-mode t)

; Company
(add-hook 'after-init-hook 'global-company-mode)

; Eglot
(with-eval-after-load "eglot"
    (add-to-list 'eglot-server-programs
        '(python-mode . ("/home/jtyocum/.venv/py3dev/bin/pyls")))
    (add-to-list 'eglot-server-programs
        '((c++-mode c-mode) . ("ccls" "--init" "{\"clang\": {\"resourceDir\": \"/usr/lib64/clang/10.0.0\"}}"))))

; Python
(setq python-shell-interpreter "/home/jtyocum/.venv/py3dev/bin/python3"
      python-shell-interpreter-args "-i")
(add-hook 'python-mode-hook 'eglot-ensure)

(setq blacken-executable "/home/jtyocum/.venv/py3dev/bin/black")

; C / C++
(setq c-default-style "k&r"
    c-basic-offset 4)

(eval-after-load "cc-mode"
  '(progn
     (define-key c-mode-map (kbd "C-c i") 'clang-format-region)
     (define-key c-mode-map (kbd "C-c u") 'clang-format-buffer)))

(eval-after-load "cc-mode"
  '(progn
     (define-key c++-mode-map (kbd "C-c i") 'clang-format-region)
     (define-key c++-mode-map (kbd "C-c u") 'clang-format-buffer)))

(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

; Org
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
