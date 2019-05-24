`(spacemacs-light
  (variable-pitch
   :family ,et-font
            :background nil
            :foreground ,bg-dark
            :height 1.2
   )
  (fringe :background ,bg-white :foreground ,bg-white)
  (header-line
   :background nil :inherit nil
   )
  (magit-header-line
   :background nil
                :foreground ,bg-white
                :box nil)
  (doom-neotree-dir-face
   :family ,sans-font
            :height 1.0)
  (doom-neotree-file-face
   :family ,sans-font
            :height 1.0)
  (doom-neotree-text-file-face
   :family ,sans-font
            :height 1.0)
  (doom-neotree-hidden-file-face
   :family ,sans-font
            :height 1.0
            :foreground ,comment)
  (doom-neotree-media-file-face
   :family ,sans-font
            :height 1.0
            :foreground ,type)
  (doom-neotree-data-file-face
   :family ,sans-font
            :height 1.0
            :foreground ,doc)
  (mode-line
   :background ,bg-white
                :box nil)
  (mode-line-inactive :box nil)
  (powerline-active1 :background ,bg-white)
  (powerline-active2 :background ,bg-white)
  (powerline-inactive1 :background ,bg-white)
  (powerline-inactive2 :background ,bg-white)
  (highlight :background ,shade-white)
 (org-document-title
  :inherit nil
            :family ,et-font
            :height 1.6
            :foreground ,bg-dark
            :underline nil
  )
 (org-document-info
  :height 1.2 :slant italic
  )
 (org-level-1
  :inherit nil
            :family ,et-font
            :height 1.5
            :weight normal
            :slant normal
            :foreground ,bg-dark
  )
(org-level-2
   :inherit nil
             :family ,et-font
             :weight normal
             :height 1.4
             :slant italic
             :foreground ,bg-dark)
  (org-level-3
   :inherit nil
             :family ,et-font
             :weight normal
             :slant italic
             :height 1.3
             :foreground ,bg-dark)
  (org-level-4
   :inherit nil
             :family ,et-font
             :weight normal
             :slant italic
             :height 1.2
             :foreground ,bg-dark)
  (org-level-5 nil)
  (org-level-6 nil)
  (org-level-7 nil)
  (org-level-8 nil)
  (org-headline-done
   :family ,et-font
            :strike-through t)
  (org-quote nil)
  (org-block
   :background nil
   :foreground ,bg-dark
   :inherit default)
  (org-block-begin-line
   :background nil
                :height 0.8
                :family ,sans-mono-font
                :foreground ,slate)
  (org-block-end-line
   :background nil
                :height 0.8
                :family ,sans-mono-font
                :foreground ,slate)
  (org-document-info-keyword
   :height 0.8
            :foreground ,gray)
  (org-link
   :foreground ,bg-dark)
  (org-special-keyword
   :family ,sans-mono-font
            :height 0.8)
  (org-todo nil)
  (org-done nil)
  (org-agenda-current-time nil)
  (org-hide
   :foreground ,bg-white :inherit fixed-pitch)
  (org-indent :inherit (org-hide fixed-pitch))
  (org-time-grid nil)
  (org-warning nil)
  (org-date
   :family ,sans-mono-font
            :height 0.8)
  (org-agenda-structure nil)
  (org-agenda-date
   :inherit variable-pitch
             :height 1.1)
  (org-agenda-date-today nil)
  (org-agenda-date-weekend nil)
  (org-scheduled nil)
  (org-upcoming-deadline nil)
  (org-scheduled-today nil)
  (org-scheduled-previously nil)
  (org-agenda-done
   :strike-through t
                    :foreground ,doc)
  (org-ellipsis
   :underline nil
               :foreground ,comment)
  (org-tag
   :foreground ,doc)
  (org-table
   :family ,serif-mono-font
            :height 0.9
            :background ,bg-white)
  (org-code
   :inherit nil
             :family ,serif-mono-font
             :foreground ,comment
             :height 0.9)
  (font-latex-sectioning-0-face nil)
  (font-latex-sectioning-1-face nil)
  (font-latex-sectioning-2-face nil)
  (font-latex-sectioning-3-face nil)
  (font-latex-sectioning-4-face nil)
  (font-latex-sectioning-5-face nil)
  (font-latex-verbatim-face nil)
 )
