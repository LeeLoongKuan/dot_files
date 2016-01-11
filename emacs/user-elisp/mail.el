(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(require 'smtpmail)

; smtp
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials
      '(("smtp.gmail.com" 587 nil nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)

(require 'mu4e)

(setq mu4e-maildir (expand-file-name "~/Mail/monash"))

(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent Items")
(setq mu4e-trash-folder  "/Trash")
(setq message-signature-file "~/Mail/.signature") ; put your signature in this file

; get mail
(setq mu4e-get-mail-command "mbsync -c ~/.config/mbsync/mbsyncrc monash"
      mu4e-html2text-command "w3m -T text/html"
      mu4e-update-interval 120
      mu4e-headers-auto-update t
      mu4e-compose-signature-auto-include nil)

(setq mu4e-maildir-shortcuts
      '( ("/Inbox"               . ?i)
         ("/Sent Items"   . ?s)
         ("/Trash"       . ?t)
         ("/Drafts"    . ?d)))

;; show images
(setq mu4e-show-images t)

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

;; general emacs mail settings; used when composing e-mail
;; the non-mu4e-* stuff is inherited from emacs/message-mode
(setq mu4e-reply-to-address "lklee9@student.monash.edu"
    user-mail-address "lklee9@student.monash.edu"
    user-full-name  "Lee Loong Kuan")

;; don't save message to Sent Messages, IMAP takes care of this
; (setq mu4e-sent-messages-behavior 'delete)

;; spell check
(add-hook 'mu4e-compose-mode-hook
        (defun my-do-compose-stuff ()
           "My settings for message composition."
           (set-fill-column 72)
           (flyspell-mode)))
