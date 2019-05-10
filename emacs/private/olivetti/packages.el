;;; packages.el --- olivetti Layer packages File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(defconst olivetti-packages
  '(olivetti))

(defun olivetti/init-olivetti ()
  (use-package olivetti))
