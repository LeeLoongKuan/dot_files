;;; init-java.el --- Responsible for Java mode 


;;; Commentary:
;; Configuration file for IDE features for Java
;; Uses emacs-eclim for autocompletion


;; Code:

;; Start emacs-eclim
(require 'eclim)
(global-eclim-mode)
(require 'eclimd)

;; Compilation error messages in echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)


;; Configure autocomplete
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;;; init-java.el ends here
