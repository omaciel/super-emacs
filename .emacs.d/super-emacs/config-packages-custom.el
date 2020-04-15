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

;; Enable syntax checking globally
(add-hook 'python-mode-hook
          (lambda ()
            (flycheck-mode 1)
            (setq flycheck-checker 'python-flake8)))

;;; config-package-custom.el ends here
