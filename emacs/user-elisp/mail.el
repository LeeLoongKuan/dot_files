;;;; mail.el --- Use mu4e for email viewing and management
;;; Commentary:
;;; Code:
; add the source shipped with mu to load-path
(add-to-list 'load-path (expand-file-name "/usr/share/emacs/site-lisp/mu4e"))

; make sure emacs finds applications in /usr/local/bin
(setq exec-path (cons "/usr/local/bin" exec-path))

; require mu4e
(require 'mu4e)

; tell mu4e where my Maildir is
(setq mu4e-maildir "~/Mail")
; tell mu4e how to sync email
(setq mu4e-get-mail-command "/usr/local/bin/mbsync -a")
; tell mu4e to use w3m for html rendering
(setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")

; taken from mu4e page to define bookmarks
(add-to-list 'mu4e-bookmarks
            '("size:5M..500M"       "Big messages"     ?b))

(setq mu4e-contexts
      `( ,(make-mu4e-context
           :name "Student"
           :enter-func (lambda () (mu4e-message "Switch to the Student context"))
           ;; leave-func not defined
           :match-func (lambda (msg)
                         (when msg 
                           (mu4e-message-contact-field-matches msg 
                                                               :to "lklee9@student.monash.edu")))
           :vars '( ( user-mail-address      . "lklee9@student.monash.edu" )
                    ( user-full-name	     . "Loong Kuan Lee" )
                    ( mu4e-compose-signature . (concat
                                                "Loong Kuan Lee\n"
                                                "Student ID: 26075040\n"))
                    ( mu4e-sent-folder   . "/lklee9/sent" )
                    ( mu4e-drafts-folder . "/lklee9/drafts" )
                    ( mu4e-trash-folder  . "/lklee9/bin" )
                    ( mu4e-refile-folder . "/lklee9/archived" ) ))
         ,(make-mu4e-context
	  :name "Work"
	  :enter-func (lambda () (mu4e-message "Switch to the Work context"))
	  ;; leave-fun not defined
	  :match-func (lambda (msg)
                    (when msg 
                      (mu4e-message-contact-field-matches msg 
                                                          :to "loong.lee@monash.edu")))
	  :vars '( ( user-mail-address	    . "loong.lee@monash.edu" )
               ( user-full-name	        . "Loong Kuan Lee" )
               ( mu4e-compose-signature . (concat
                                           "Loong Kuan Lee\n"
                                           "\n"))
               ( mu4e-sent-folder   . "/loong.lee/sent" )
               ( mu4e-drafts-folder . "/loong.lee/drafts" )
               ( mu4e-trash-folder  . "/loong.lee/bin" )
               ( mu4e-refile-folder . "/loong.lee/archived" )))))
      
;; compose with the current context is no context matches;
;; default is to ask-user-about- 
'(setq mu4e-compose-context-policy nil)

;; show images
(setq mu4e-show-images t)

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

;; don't save message to Sent Messages, IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; spell check
(add-hook 'mu4e-compose-mode-hook
        (defun my-do-compose-stuff ()
           "My settings for message composition."
           (set-fill-column 72)
           (flyspell-mode)))
