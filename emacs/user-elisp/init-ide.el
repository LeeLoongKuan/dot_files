;;; init-ide.el --- Setting ide like configurations


;;; Commentary:
;; Configuration file to make emacs similar to an ide
;; Implements: a fixed height for compilation window, a project manager directory tree

;;; Code:
;; start interactively do things mode (ido mode)
(require 'ido)
(ido-mode t)

;; Ensures *compilation* buffer is a certain height and is in new window
(defun my-compilation-hook ()
  (when (not (get-buffer-window "*compilation*"))
    (save-selected-window
      (save-excursion
        (let* ((w (split-window-vertically))
               (h (window-height w)))
          (select-window w)
          (switch-to-buffer "*compilation*")
          (shrink-window (- h 10)))))))
(add-hook 'compilation-mode-hook 'my-compilation-hook)


;;; init-ide.el ends here
