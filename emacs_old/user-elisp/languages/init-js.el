;;; init-js.el --- File to customise javascript mode
;;; Commentary:

;;; Code:
(add-hook 'js-mode-hook 'tern-mode)
(add-to-list 'company-backends 'company-tern)

;;; init-js.el ends here
