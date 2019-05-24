;; Configuration of tools for writing prose, documents, or experiments

;; Hooks
(add-hook 'text-mode-hook (lambda ()
                            (interactive)
                            (spacemacs/toggle-vi-tilde-fringe-off)
                            (olivetti-mode 1)
                            (setq olivetti-body-width 90)
                            (linum-mode 0)
                            (setq-local global-hl-line-mode nil)
                            ))
(add-hook 'org-mode-hook (lambda ()
                            (variable-pitch-mode 1)
                            ))

;(use-package mixed-pitch
;  :hook
;  ;; If you want it in all text modes:
;  (text-mode . mixed-pitch-mode))
