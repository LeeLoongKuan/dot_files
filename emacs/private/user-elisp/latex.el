;; Hooks for latex-mode
(add-hook 'LaTeX-mode-hook #'outline-minor-mode)

;; extra outline headers 
(setq TeX-outline-extra
      '(("%chapter" 1)
        ("%section" 2)
        ("%subsection" 3)
        ("%subsubsection" 4)
        ("%paragraph" 5)
        ))

;; add font locking to the headers
(font-lock-add-keywords
 'latex-mode
 '(("^%\\(chapter\\|\\(sub\\|subsub\\)?section\\|paragraph\\)"
    0 'font-lock-keyword-face t)
   ("^%chapter{\\(.*\\)}"       1 'font-latex-sectioning-1-face t)
   ("^%section{\\(.*\\)}"       1 'font-latex-sectioning-2-face t)
   ("^%subsection{\\(.*\\)}"    1 'font-latex-sectioning-3-face t)
   ("^%subsubsection{\\(.*\\)}" 1 'font-latex-sectioning-4-face t)
   ("^%paragraph{\\(.*\\)}"     1 'font-latex-sectioning-5-face t)
   ))

(eval-after-load 'outline
  '(progn
     (require 'outline-magic)
     (define-key outline-minor-mode-map (kbd "<tab>") 'outline-cycle)))
