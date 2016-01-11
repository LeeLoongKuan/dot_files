;;; init-packages --- Package Manager


;;; Commentary:
;; Configuration file to load repositories, manages packages, start packages


;;; Code:
;; Load emacs package manager and package repositories
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("melpa" . "http://melpa.milkbox.net/packages/")
		  ("melpa-stable" . "http://stable.melpa.org/packages/")
                  ))
  (add-to-list 'package-archives source t))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; Function to check if packages given in argument is installed
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Call function giving the packages to check to install
(ensure-package-installed 
				'ample-theme
				'auctex
				'auto-complete
				'auto-complete-auctex
				'auto-complete-c-headers
				'autopair
				'color-theme
				'color-theme-wombat
				'company
				'concurrent
				'ctable
				'dash
				'dired+
				'deferred
				'elpy
				'epc
				'epl
                'emacs-eclim
				'evil
				'find-file-in-project
				'flycheck
				'haskell-mode
				'highlight-indentation
				'idomenu
				'iedit
				'jedi
				'latex-preview-pane
				'let-alist
				'linum-relative
				'magit
				'minimap
				'monokai-theme
				'org
				'pabbrev
				'pkg-info
				'popup
				'powerline
				'powerline-evil
				'pyvenv
				'python-environment
				'undo-tree
				'yasnippet)


;; activate installed packages
(package-initialize)

;; Load locally installed packages
(add-to-list 'load-path "~/.emacs.d/elisp/structured-haskell-mode/elisp/")

;; Ensure environment variables in emacs are correct
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))



;;; init-packages.el ends here
