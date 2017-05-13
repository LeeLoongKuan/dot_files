;;; init-editor.el --- Controls the behaviour of the editor in emacs


;;; Commentary:
;; Configuration file to control the way the user edits files in emacs by customizing the look and function of the emacs editor
;; Implements: The modal editor Vim (Using evil package), auto matching delimiters, a better undo tree, desktop/buffer auto save function, highlight current line, configuration of tab behaviour


;;; Code:
;; Start evil
(require 'evil)
(evil-mode 1)
;; Make movement keys work like they should
(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-line)
; Make horizontal movement cross lines
(setq-default evil-cross-lines t)

; Indicate "fill column" of 72 characters in length
(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)


;; Delimiter matching and autocomplete (ex:(),{},[])
(electric-pair-mode 1) ; Delimiter matching
(show-paren-mode 1) ; turn on paren match highlighting
(setq show-paren-style 'expression) ; highlight entire bracket expression

;; A better undo function than default
(require 'undo-tree)
(global-undo-tree-mode 1)

;; Highlight Current line
(global-hl-line-mode 1)

;; Configure tab behaviour
(setq-default indent-tabs-mode nil)  ; Use spaces for tabs
(setq tab-stop-list (number-sequence 4 120 4))  ; Set default tab to 4 spaces
(setq tab-width 4)  ; Sets <Tab> character to be displayed by 4 spaces

;; highlight indentation
(require 'highlight-indentation)
;; Save the current desktop (opened buffers and layout) to open in future sessions
;(desktop-save-mode 1)


;;; init-editor.el ends here
