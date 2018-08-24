(defun super-emacs-reload-current-file ()
  "Reload the file loaded in current buffer from the disk"
  (interactive)
  (cond (buffer-file-name (progn (find-alternate-file buffer-file-name)
                                 (message "File reloaded")))
        (t (message "You're not editing a file!"))))

;Disable splash message, start *scratch* buffer by default
(setq initial-buffer-choice
      t)
(setq initial-scratch-message
      "")

;Enforce spaces for indentation, instead of tabs
(setq-default indent-tabs-mode
              nil)
(setq-default tab-width 4)

;Enable show-paren-mode
(show-paren-mode)

;Enable winner-mode
(winner-mode t)

;Enable windmove
(windmove-default-keybindings)

;Enable git-gutter globally
(global-git-gutter-mode +1)

;Handle SSH AGENT for passwordless ssh
(require 'exec-path-from-shell)
(exec-path-from-shell-copy-env "SSH_AGENT_PID")
(exec-path-from-shell-copy-env "SSH_AUTH_SOCK")

;; Org-mode stuff
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;Setup multi-term
(setq multi-term-program "/bin/zsh")

;Handles sourcing ZSH
(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
        (append
         (split-string-and-unquote path ":")
         exec-path)))

;Set PYTHONPATH variable
(setenv "PYTHONPATH" "/home/omaciel/hacking:/home/omaciel/Dropbox/Hacking:/home/omaciel:/home/omaciel/hacking/katello-cli/src")

;Useful function to generate date information
(defun datestamp ()
  (interactive)
  (call-process "date" nil t nil "+%a %b %d %Z %Y"))


;; Use Emacs terminfo, not system terminfo
;; (setq system-uses-terminfo nil)

;Do not make backups
(setq make-backup-files nil)
