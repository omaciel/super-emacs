;; Place your customizations to 'config-misc.el' here.
;; Future updates to super-emacs will very less likely change this file so that
;; your customizations can remain free of merge conflicts.

;; Don't make backups
(setq make-backup-files nil)

;; Fix $PATH environment variable
(exec-path-from-shell-initialize)

;Handles sourcing ZSH
 (let ((path (shell-command-to-string ". ~/.zshenv; echo -n $PATH")))
   (setenv "PATH" path)
   (setq exec-path
         (append
          (split-string-and-unquote path ":")
          exec-path)))
