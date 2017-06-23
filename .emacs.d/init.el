;Record startup timestamp

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar super-emacs/invokation-time
  (current-time))

;Load configuration files
(load-file "~/.emacs.d/super-emacs/repositories.el")
(load-file "~/.emacs.d/super-emacs/packages.el")
(load-file "~/.emacs.d/super-emacs/interface.el")
(load-file "~/.emacs.d/super-emacs/misc.el")
(load-file "~/.emacs.d/super-emacs/python.el")
(load-file "~/.emacs.d/super-emacs/key-bindings.el")

; My personal files

(load-file "~/.emacs.d/myfiles/basic.el")
(load-file "~/.emacs.d/myfiles/simplenote.el")
(load-file "~/.emacs.d/myfiles/mastodon.el")
(load-file "~/.emacs.d/myfiles/php.el")

;Print welcome message
(princ (cl-concatenate 'string
                       "Startup completed in "
                       (number-to-string (cadr (time-subtract (current-time)
                                                              super-emacs/invokation-time)))
                       " seconds\n\n"
                       "Welcome to super-emacs!\n\n"
                       "Today's date: "
                       (format-time-string "%B %d %Y"))
       (get-buffer-create (current-buffer)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (emmet-mode php-mode web-mode jedi flycheck markdown-mode multi-term git-gutter magit theme-looper myterminal-controls meta-presenter which-key dired-launch material-theme neotree undo-tree ztree auto-complete buffer-move switch-window powerline ace-jump-mode multiple-cursors helm mastodon simplenote2)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 158 :family "Fantasque Sans Mono" :foundry "PfEd" :slant normal :weight normal :width normal)))))

