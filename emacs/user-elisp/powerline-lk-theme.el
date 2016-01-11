;;; powerline-lk-theme --- Loong Kuan's own modified powerline theme


;;; Commentary:
;; Powerline theme that uses the colours #1793d0 (arch blue) and #2d2d2d 
;; Implements: A powerline theme that uses 2 faces


;;; Code:
(defun powerline-lk-theme ()
  "Powerline's Vim-like mode-line with evil state at the beginning in color."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          powerline-default-separator
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           powerline-default-separator
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (list (let ((evil-face (powerline-evil-face)))
                                       (if evil-mode
                                           (powerline-raw (powerline-evil-tag) evil-face)))

(when (buffer-modified-p)
                                       (powerline-raw "[*]" face2))
                                     (when buffer-read-only
                                       (powerline-raw "[RO]" face2))

(when powerline-display-buffer-size
                                       (powerline-buffer-size face2 'l))

                                     (when powerline-display-mule-info
                                       (powerline-raw mode-line-mule-info face2 'l))
                                     (powerline-buffer-id face2 'l)
                                     (when (and (boundp 'which-func-mode) which-func-mode)
                                       (powerline-raw which-func-format face2 'l))
                                     (powerline-raw " " face2)
                                     (funcall separator-left face2 face1)
                                     (when (boundp 'erc-modified-channels-object)
                                       (powerline-raw erc-modified-channels-object face1 'l))
                                     (powerline-major-mode face1 'l)
                                     (powerline-process face1)
                                     (powerline-minor-modes face1 'l)
                                     (powerline-narrow face1 'l)
                                     (powerline-raw " " face1)
                                     (funcall separator-left face1 face2)
                                     (powerline-vc face2 'r)
                                     (when (bound-and-true-p nyan-mode)
                                       (powerline-raw (list (nyan-create)) face2 'l))))
                          (rhs (list (powerline-raw global-mode-string face2 'r)
                                     (funcall separator-right face2 face1)
				     (unless window-system
				       (powerline-raw (char-to-string #xe0a1) face1 'l))
				     (powerline-raw "%4l" face1 'l)
				     (powerline-raw ":" face1 'l)
				     (powerline-raw "%3c" face1 'r)
				     (funcall separator-right face1 face2)
				     (powerline-raw " " face2)
				     (powerline-raw "%6p" face2 'r)
                                     (when powerline-display-hud
                                       (powerline-hud face2 face1)))))
		     (concat (powerline-render lhs)
			     (powerline-fill face2 (powerline-width rhs))
			     (powerline-render rhs)))))))


;;; powerline-lk-theme ends here
