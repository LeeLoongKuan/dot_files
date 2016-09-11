;;; init-ui.el --- configures emacs user interface


;;; Commentary:
;; Configuration file for emacs's looks
;; Implements: Toggle Certain ui elements, margin line numbers, word wrapping, cursor type, color theme


;;; Code:
;; Disable extra/useless ui elements (Tool bar, Scroll bar)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display line numbers in margin (relative) and column number respectively
(global-linum-mode 1)
(require 'linum-relative)
(column-number-mode 1)

;; Disable word-wrapping and operate by logical-lines not visual-lines
(global-visual-line-mode 1)

;; Use the I-Bar as cursor in buffers
;(modify-all-frames-parameters (list (cons 'cursor-type 'bar)))

;; Set colour theme for emacs
(setq color-theme-is-global t)
(load-theme 'ample t)
;(load-theme 'wombat t)
;(load-theme 'monokai t)

;; Hotkeys for resizing windows
(global-set-key (kbd "<C-M-up>") 'shrink-window)
(global-set-key (kbd "<C-M-down>") 'enlarge-window)
(global-set-key (kbd "<C-M-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-M-right>") 'enlarge-window-horizontally)

;; Hotkeys for moving between windows using windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Start and configure Powerline
(require 'powerline)
(require 'powerline-evil)
;; Load my own powerline theme
(load "powerline-lk-theme")
(powerline-lk-theme)

;; Minimap Configuration
(setq minimap-window-location 'right)
(setq minimap-buffer-name '"*MM*")
(setq minimap-hide-fringes 't)
(setq minimap-dedicated-window 't)
(setq minimap-mode 'nil)


;;; init-ui.el ends here
