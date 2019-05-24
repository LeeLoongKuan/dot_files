(defun my-eval-string (str)
  "Read and evaluate all forms in str.
Return the results of all forms as a list."
  (let ((next 0)
        ret)
    (condition-case err
        (while t
          (setq ret (cons (funcall (lambda (ret)
                                     (setq next (cdr ret))
                                     (eval (car ret)))
                                   (read-from-string str next))
                          ret)))
      (end-of-file))
    (nreverse ret)))

(defun eval-file (file)
  "Execute FILE and return the result of the last expression."
  (eval
   (ignore-errors
     (read-from-whole-string
      (with-temp-buffer
        (insert-file-contents file)
        (buffer-string))))))

;; Variables
(let ((bg-white           "#fbf8ef")
      (bg-light           "#222425")
      (bg-dark            "#1c1e1f")
      (bg-darker          "#1c1c1c")
      (fg-white           "#ffffff")
      (shade-white        "#efeae9")
      (fg-light           "#655370")
      (dark-cyan          "#008b8b")
      (region-dark        "#2d2e2e")
      (region             "#39393d")
      (slate              "#8FA1B3")
      (keyword            "#f92672")
      (comment            "#525254")
      (builtin            "#fd971f")
      (purple             "#9c91e4")
      (doc                "#727280")
      (type               "#66d9ef")
      (string             "#b6e63e")
      (gray-dark          "#999")
      (gray               "#bbb")
      (sans-font          "Bitter")
      (serif-font         "Merriweather")
      (et-font            "Bitter")
      (sans-mono-font     "Iosevka")
      (serif-mono-font    "Verily Serif Mono"))
     (setq theming-modifications
           `(
             ,(eval-file "~/.emacs.d/private/themes/tufte.el")
             ,(eval-file "~/.emacs.d/private/themes/rogue.el")
             ;,(eval-file "~/.emacs.d/private/themes/poet.el")
             )
           )
     )


