(message "initialisating config...")
(add-to-list 'load-path "~/.emacs.d/user-elisp/")
(package-initialize nil)

(require 'package)
(package-initialize)
(setq package-archives '())
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(setq package-archive-priorities '(("org" . 4)
                                   ("melpa-stable" . 3)
                                   ("melpa" . 2)
                                   ("gnu" . 1)))
(add-to-list 'package-pinned-packages
             '(use-package . "melpa-stable"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-verbose t)
(eval-when-compile
  (require 'use-package))
;; if you use :diminish
(require 'diminish)
;; if you use any :bind variant
(require 'bind-key)
(setq use-package-always-ensure t)

(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
)

(global-set-key (kbd "C-; r") 
'(load-file "~/.emacs.d/init.el"))

(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq color-theme-is-global t)
(load-theme 'ample t)

(global-set-key (kbd "<C-M-up>") 'shrink-window)
(global-set-key (kbd "<C-M-down>") 'enlarge-window)
(global-set-key (kbd "<C-M-left>") 
                'shrink-window-horizontally)
(global-set-key (kbd "<C-M-right>") 
                'enlarge-window-horizontally)

(use-package powerline
  :config
  (use-package powerline-evil)
  (load "powerline-lk-theme")
  (powerline-lk-theme)
  (setq minimap-window-location 'right)
  (setq minimap-buffer-name '"*MM*")
  (setq minimap-hide-fringes 't)
  (setq minimap-dedicated-window 't)
  (setq minimap-mode 'nil))

(use-package evil
  :config
  (evil-mode 1)
  (setq-default evil-cross-lines t)
  ;; Disable word-wrapping and 
  ;;operate by logical-lines not visual-lines
  (global-visual-line-mode 1))

(setq-default fill-column 60)

(use-package fill-column-indicator
  :config
  (setq fci-rule-width 1)
  (setq fci-rule-color "white"))

(global-linum-mode 1)
(column-number-mode 1)
(use-package linum-relative
  :config
  (linum-relative-on)
  (setq linum-relative-current-symbol ""))

; Delimiter matching
(electric-pair-mode 1)
; turn on paren match highlighting
(show-paren-mode 1)
; highlight entire bracket expression
(setq show-paren-style 'expression)

(use-package ivy
  ;:bind (("C-x C-f" . counsel-find-file)
  ;       ("M-x" . counsel-M-x))
  :config
  (use-package counsel)
  (use-package swiper)
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-count-format "(%d/%d) ")
)

(use-package company
  :bind (("C-; c" . company-complete))
  :config
  (global-company-mode)
)

(use-package which-key
  :config
  (setq which-key-popup-type 'minibuffer)
  (which-key-mode)
)

(use-package org
  :init
  (add-hook 'org-mode-hook 'fci-mode)
  :config
  (setq org-log-done 'time))

(use-package company-tern
  :init
  (add-hook 'org-mode-hook 'fci-mode)
  (add-hook 'js-mode-hook 'tern-mode)
  :config
  (add-to-list 'company-backends 'company-tern)
  (progn
    (use-package tern-auto-complete)
    (tern-ac-setup))
)
