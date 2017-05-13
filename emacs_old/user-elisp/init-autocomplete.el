;;; init-autocomplete.el --- Responsible for starting auto-complete and yasnippet packages


;;; Commentary:
;; Configuration file to initialize autocomplete base components
;; Starts auto-complete with default configurations and starts yasnippet and loads template directories


;;; Code:
;; Start auto-complete and load default config
;(require 'auto-complete)
;(require 'auto-complete-config)
;(ac-config-default)

;; Use company-mode for autocomplete
(require 'company)
(global-company-mode)
;; Use Ctrl-\ to list completions
(global-set-key (kbd "C-\\") 'company-complete)

;; Start yasnippet (template completion) and load snippets
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                   ; personal snippets
        ))
(yas-global-mode 1)
 
;; Tab to complete and to also tab
  (defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
          (backward-char 1)
          (if (looking-at "->") t nil)))))

  (defun do-yas-expand ()
    (let ((yas/fallback-behavior 'return-nil))
      (yas/expand)))

  (defun tab-indent-or-complete ()
    (interactive)
    (if (minibufferp)
        (minibuffer-complete)
      (if (or (not yas/minor-mode)
              (null (do-yas-expand)))
          (if (check-expansion)
              (company-complete-common)
            (indent-for-tab-command)))))

  (global-set-key [tab] 'tab-indent-or-complete)

;;; init-autocomplete.el ends here
