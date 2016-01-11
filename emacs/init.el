;;; init.el --- emacs initialization file


;;; Commentary:
;; This file contains the custom set variables created by emacs itself and then calls the elisp files in user-elisp


;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-emacs-eclim company-bbdb company-css company-semantic company-clang company-xcode company-cmake company-capf
                         (company-dabbrev-code company-gtags company-etags company-keywords)
                         company-oddmuse company-files company-dabbrev)))
 '(company-frontends
   (quote
    (company-pseudo-tooltip-frontend company-echo-metadata-frontend company-preview-if-just-one-frontend)))
 '(company-idle-delay 0.1)
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "08efabe5a8f3827508634a3ceed33fa06b9daeef9c70a24218b70494acdf7855" "49eea2857afb24808915643b1b5bd093eefb35424c758f502e98a03d0d3df4b1" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" default)))
 '(doc-view-continuous t)
 '(eclim-eclipse-dirs (quote ("/usr/lib/eclipse")))
 '(eclim-executable "/usr/lib/eclipse/eclim")
 '(ede-project-directories (quote ("/home/loongkuan/Code/Java/HelloWorld")))
 '(ispell-local-dictionary "en_AU")
 '(powerline-default-separator (quote arrow))
 '(show-paren-mode t)
 '(sublimity-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight normal :height 113 :width normal))))
 '(company-scrollbar-bg ((t (:background "#3a3a3a"))))
 '(company-scrollbar-fg ((t (:background "#2d2d2d"))))
 '(company-tooltip ((t (:inherit default :background "#262626"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(menu ((t (:slant normal :weight normal :height 1.0 :width normal :foundry "adobe" :family "Source Code Pro"))))
 '(minimap-active-region-background ((t (:background "gray20"))))
 '(powerline-active1 ((t (:background "#252525" :foreground "cornsilk4"))))
 '(powerline-active2 ((t (:background "#1793d0" :foreground "#2d2d2d"))))
 '(powerline-inactive1 ((t (:background "#252525" :foreground "cornsilk4"))))
 '(powerline-inactive2 ((t (:background "#2d2d2d" :foreground "cornsilk4")))))

;; Load user config/elisp files
(add-to-list 'load-path "~/.emacs.d/user-elisp/")
(load "init-packages")
(load "init-ui")
(load "init-editor")
(load "init-flycheck")
(load "init-latex")
(load "init-ide")
(load "init-autocomplete")
(load "spellcheck")
;(load "mail")
(load "languages/init-cpp")
(load "languages/init-python")
(load "languages/init-latex")
(load "languages/init-haskell")
(load "languages/init-org")
(load "languages/init-java")

;; Load internet elisp files
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
)


;;; init.el ends here
