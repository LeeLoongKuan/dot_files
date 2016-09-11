;;; init-flycheck.el --- Syntax Checker


;;; Commentary:
;; Configuration file for the syntax checker which emacs uses for all files (uses flycheck for checking)
;; So far supports: C++, Lisp


;;; Code:
;; Enable flycheck globally
(add-hook 'after-init-hook #'global-flycheck-mode)


;;; init-flycheck.el ends here
