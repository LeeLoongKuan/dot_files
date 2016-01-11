;;; init-autocomplete-latex.el --- Responsible for suto completion in Latex/Auctex mode


;;; Commentary:
;; Config File for auto completion in Latex
;; uses pabbrev for auto completion for words and auto-complete for syntax auto completion


;;; Code:
;; Word autocomplete
(require 'pabbrev)
(add-hook 'text-mode-hook (lambda () (abbrev-mode 1)))

;; Syntax autocomplete
(require' auto-complete)
(require 'auto-complete-auctex)


;;; init-autocomplete-latex.el ends here
