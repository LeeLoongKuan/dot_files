;;; init-autocomplete-python.el --- Responsible for auto completion in python mode


;;; Commentary:
;; Configuration file for auto completion in python code
;; uses elpy which uses jedi for auto completion. Also tells emacs where the python interpreter is


;;; Code:
;; Enable elpy mode (Emacs Python Development Environment)
(package-initialize)
(elpy-enable)
(elpy-use-ipython)
 
;; Fixing a key binding bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;; Fixing another key binding bug in iedit mode
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; Tell emacs/elpy where the python interpreter is
(setenv "PYTHONPATH" "/usr/bin/python" )

;; Set the auto complete module elpy uses
(setq elpy-rpc-backend "jedi")

;; Set indentation to 4 spaces
(defun my-python-mode-hook ()
  (highlight-indentation-mode)
  (guess-style-guess-tabs-mode)
  (elpy-mode))
(add-hook 'python-mode-hook 'my-python-mode-hook)
  

;;; init-autocomplete-python.el ends here
