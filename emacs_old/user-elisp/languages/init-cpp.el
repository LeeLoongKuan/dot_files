;;; init-autocomplete-cpp.el --- Responsible for auto completion in C/C++ mode


;;; Commentary:
;; Configuration file for C/C++ code auto completion
;; Uses CEDET for auto completion


;; Code:
'(require auto-complete)
;; Start code parser for intellisense and autocomplete
(semantic-mode 1)
;; let's define a function which adds semantic as a suggestion backend to auto complete and hook this function to c-mode-common-hook
(defun my:add-semantic-to-autocomplete() 
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
(global-ede-mode 1) ; turn on ede mode 
;; create a project for our program.
;; (ede-cpp-root-project "Jarvis"
;; 		      :name "Jarvis"
;; 		      :file "~/Documents/Programming_Projects/C++/Jarvis/main.cpp"
;;		      :include-path '("/include")
;;		      :system-include-path '(/usr/include))
;; you can use system-include-path for setting up the system header file locations.
;; turn on automatic reparsing of open buffers in semantic
(global-semantic-idle-scheduler-mode 1)


;;; init-cpp.el ends here
