;;; config-packages-custom --- Summary
;;; Commentary:
;; Place your customizations to 'config-packages.el' here.
;; Future updates to super-emacs will very less likely change this file so that
;; your customizations can remain free of merge conflicts.

;;; Code:
;; Enable elpy for python
(elpy-enable)

;; Enable git-gutter globally
(global-git-gutter-mode +1)

;; Globally disable these readline warnings
;; https://emacs.stackexchange.com/questions/30082/your-python-shell-interpreter-doesn-t-seem-to-support-readline#comment60191_30970
;; Also, set global defaults to use Python 3
(setq python-shell-interpreter (executable-find "python3")
                  python-shell-completion-native-enable nil
                  python-shell-interpreter-args "-i"
                  python-environment-directory "$HOME/.virtual")

;; Enable syntax checking globally
(add-hook 'python-mode-hook
          (lambda ()
            (setq-default indent-tabs-mode nil)
            (setq-default tab-width 4)
            (flycheck-mode 1)
            (flymake-mode nil)
            (setq flycheck-checker 'black)
            ;;(setq elpy-rpc-virtualenv-path (concat (getenv "HOME") "/.virtual/elpy-rpc"))
            (setq elpy-rpc-virtualenv-path 'default)
            (setq elpy-rpc-python-command (executable-find "python3"))))

;;; config-package-custom.el ends here
