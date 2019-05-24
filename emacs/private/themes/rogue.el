`(doom-molokai
  (variable-pitch
   :family ,sans-font
   :height 1.2
   )
  (fringe :background ,bg-dark :foreground ,bg-dark)
  (header-line
   :background nil :inherit nil
   )
  (company-tooltip
   :background ,bg-darker :foreground ,gray
   )
  (company-scrollbar-fg
   :background ,comment
   )
  (company-scrollbar-bg
   :background ,bg-darker
   )
  (company-tooltip-common
   :foreground ,keyword
   )
  (company-tootip-annotation
   :foreground ,type
   )
  (company-tooltip-selection
   :background ,region
   )
  (show-paren-match
   :background ,keyword
   :foreground ,bg-dark
   )
  (magit-section-heading
   :foreground ,keyword
   )
  (magit-header-line
   :background nil
                :foreground ,bg-dark
                :box nil)
  (magit-diff-hunk-heading
   :background ,comment
   :foreground ,gray
   )
  (magit-diff-hunk-heading-highlight
   :background ,comment
   :foreground ,fg-white
   )
  (tooltip
   :foreground ,gray
   :background ,bg-darker
   )
  (git-gutter-fr:modified
   :foreground ,dark-cyan
   )
  (doom-neotree-dir-face
   :family ,keyword
            :height 1.0)
  (doom-neotree-file-face :height 1.0)
  (doom-neotree-text-file-face :height 1.0)
  (doom-neotree-hidden-file-face
   :height 1.0
   :foreground ,comment
   )
  (doom-neotree-media-file-face
   :height 1.0
   :foreground ,type
   )
  (doom-neotree-data-file-face
   :height 1.0
   :foreground ,doc
   )
  (neo-root-dir-face
   :foreground ,fg-white
   :background ,region-dark
   :box (:line-width 6 :color ,region-dark)
   )
  (mode-line
   :background ,bg-darker
   )
  (highlight :background ,region :foreground ,fg-white)
  (hl-line
   :background ,region-dark
   )
  (solaire-hl-line-face
   :background ,bg-dark
   )
 (org-document-title
  :inherit variable-pitch
            :height 1.3
            :weight normal
            :foreground ,gray
  )
 (org-document-info
  :foreground ,gray :slant italic
  )
 (org-level-1
  :inherit variable-pitch
  :height 1.3
  :weight bold
  :foreground ,keyword
  :background ,bg-dark
  )
(org-level-2
 :inherit variable-pitch
 :weight bold
 :height 1.2
 :foreground ,gray
 :background ,bg-dark
 )
  (org-level-3
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-level-4
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-level-5
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-level-6
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-level-7
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-level-8
   :inherit variable-pitch
   :weight bold
   :height 1.1
   :foreground ,slate
   :background ,bg-dark
   )
  (org-headline-done :strike-through t)
  (org-quote :background ,bg-dark)
  (org-block :background ,bg-dark)
  (org-block-begin-line :background ,bg-dark)
  (org-block-end-line :background ,bg-dark)
  (org-document-info-keyword :foreground ,comment)
  (org-link
   :underline nil
   :weight normal
   :foreground ,slate
   )
  (org-special-keyword
   :height 0.9
   :foreground ,comment
   )
  (org-todo :foreground ,builtin :background ,bg-dark)
  (org-done nil)
  (org-done
   :inherit variable-pitch
             :foreground ,dark-cyan
             :background ,bg-dark
             )
  (org-agenda-current-time :foreground ,slate)
  (org-indent :inherit (org-hide fixed-pitch))
  (org-time-grid :foreground ,comment)
  (org-warning :foreground ,builtin)
  (org-date nil)
  (org-agenda-structure
   :height 1.3
   :foreground ,doc
   :weight normal
   :inherit variable-pitch
   )
  (org-agenda-date
   :foreground ,doc
   :inherit variable-pitch
   )
  (org-agenda-date-today
   :height 1.5
            :foreground ,keyword
            :inherit variable-pitch)
  (org-agenda-date-weekend
   :inherit org-agenda-date)
  (org-scheduled
   :foreground ,gray)
  (org-upcoming-deadline
   :foreground ,keyword)
  (org-scheduled-today
   :foreground ,fg-white)
  (org-scheduled-previously
   :foreground ,slate)
  (org-agenda-done
   :inherit nil
             :strike-through t
             :foreground ,doc)
  (org-ellipsis
   :underline nil
               :foreground ,comment)
  (org-tag
   :foreground ,doc)
  (org-table
   :background nil)
  (org-code
   :inherit font-lock-builtin-face)
  (font-latex-sectioning-0-face
   :foreground ,type
                :height 1.2)
  (font-latex-sectioning-1-face
   :foreground ,type
                :height 1.1)
  (font-latex-sectioning-2-face
   :foreground ,type
                :height 1.1)
  (font-latex-sectioning-3-face
   :foreground ,type
                :height 1.0)
  (font-latex-sectioning-4-face
   :foreground ,type
                :height 1.0)
  (font-latex-sectioning-5-face
   :foreground ,type
                :height 1.0)
  (font-latex-verbatim-face
   :foreground ,builtin)
  (spacemacs-normal-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-evilified-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-lisp-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-emacs-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-motion-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-visual-face
   :background ,bg-dark
                :foreground ,fg-white)
  (spacemacs-hybrid-face
   :background ,bg-dark
                :foreground ,fg-white)
  (bm-persistent-face
   :background ,dark-cyan
                :foreground ,fg-white)
  (helm-selection
   :background ,region)
  (helm-match
   :foreground ,keyword)
  (cfw:face-title
   :height 2.0
            :inherit variable-pitch
            :weight bold
            :foreground ,doc)
  (cfw:face-holiday
   :foreground ,builtin)
  (cfw:face-saturday
   :foreground ,doc
                :weight bold)
  (cfw:face-sunday
   :foreground ,doc)
  (cfw:face-periods
   :foreground ,dark-cyan)
  (cfw:face-annotation
   :foreground ,doc)
  (cfw:face-select
   :background ,region)
  (cfw:face-toolbar-button-off
   :foreground ,doc)
  (cfw:face-toolbar-button-on
   :foreground ,type
                :weight bold)
  (cfw:face-day-title
   :foreground ,doc)
  (cfw:face-default-content
   :foreground ,dark-cyan)
  (cfw:face-disable
   :foreground ,doc)
  (cfw:face-today
   :background ,region
                :weight bold)
  (cfw:face-toolbar
   :inherit default)
  (cfw:face-today-title
   :background ,keyword
                :foreground ,fg-white)
  (cfw:face-grid
   :foreground ,comment)
  (cfw:face-header
   :foreground ,keyword
                :weight bold)
  (cfw:face-default-day
   :foreground ,fg-white)
  (dired-subtree-depth-1-face
   :background nil)
  (dired-subtree-depth-2-face
   :background nil)
  (dired-subtree-depth-3-face
   :background nil)
  (dired-subtree-depth-4-face
   :background nil)
  (dired-subtree-depth-5-face
   :background nil)
  (dired-subtree-depth-6-face
   :background nil)
  (nlinum-current-line
   :foreground ,builtin)
  (vertical-border
   :background ,region
                :foreground ,region)
  (which-key-command-description-face
   :foreground ,type)
  (flycheck-error
   :background nil)
  (flycheck-warning
   :background nil)
  (font-lock-string-face
   :foreground ,string)
  (font-lock-comment-face
   :foreground ,doc
                :slant italic)
  (helm-ff-symlink
   :foreground ,slate)
  (region
   :background ,region)
  (header-line
   :background nil
                :inherit nil)
  )
