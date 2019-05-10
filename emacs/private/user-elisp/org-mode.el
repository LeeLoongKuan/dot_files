;;; Configuration for org-mode tools

(load-file "~/.emacs.d/private/elisp/org-variable-pitch.el")

;;; Functions
;; Function to manually latex
(defun my/org-render-latex-fragments ()
  (if (org--list-latex-overlays)
      (progn (org-toggle-latex-fragment)
             (org-toggle-latex-fragment))
    (org-toggle-latex-fragment)))


;; Customizing values
(with-eval-after-load 'org
  (setq org-bullets-face-name "fixed-pitch"
        org-bullets-bullet-list '("▸")
        org-hide-emphasis-markers t
        )
  (org-defkey org-mode-map [(meta return)] 'org-meta-return)
  (org-defkey org-mode-map [(meta enter)] 'org-meta-return)
  )

(setq org-list-allow-alphabetical t
      org-startup-indented t
      org-indent-indentation-per-level 1
      org-adapt-indentation t)

(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

(add-hook 'after-init-hook
          (lambda ()
            (require 'org-indent)       ; for org-indent face
                                ))

;; org-variable-fixed-pitch
(require 'org-variable-pitch)
(add-hook 'org-mode-hook 'org-variable-pitch-minor-mode)

;; Hook to render latex fragments on saving
(add-hook 'org-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'my/org-render-latex-fragments nil 'make-the-hook-local)))

;; org agenda and notes
(setq org-projectile-projects-file "~/org/TODOs.org"
      org-agenda-files '("~/org")
      org-default-notes-file (concat org-directory "~/org/notes.org")
      )
(setq org-capture-templates
      '(("n" "Note" entry (file+headline "~/org/TODOs.org" "Notes")
         "* TODO %t %?\n  %i")
        ("t" "Todo" entry (file+headline "~/org/TODOs.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
(with-eval-after-load 'org-projectile
  (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
  (push (org-projectile-project-todo-entry) org-capture-templates)
  )

;; org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (ditaa . t)
   (dot . t)
   (emacs-lisp . t)
   (R . t)
   (gnuplot . t)
   (js . t)
   (latex . t)
   (python . t)
   (sqlite . t)))

;; ox-hugo
(use-package ox-hugo
  :ensure t
  :after ox
  )

(setq org-hugo-default-section-directory "wiki"
      )

;; org-noter
(use-package org-noter
  :ensure t
  )

;; org-latex
(setq bibtex-dialect 'biblatex)
(setq  org-latex-pdf-process
       '("latexmk -shell-escape -bibtex -pdf %f"))
