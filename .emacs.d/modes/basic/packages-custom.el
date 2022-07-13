;; Place your customizations to 'config-packages.el' here.
;; Future updates to super-emacs will very less likely change this file so that
;; your customizations can remain free of merge conflicts.
(defvar se/packages-custom-standard
  '(;; Related to golang
    ;; Required for highlighting, indentation etc. It is major mode for Go.
    (go-mode github "dominikh/go-mode.el" t)
    ;; LSP support for Emacs.
    (lsp-mode github "emacs-lsp/lsp-mode" t)
    ;; Higher level UI modules for LSP Mode.
    (lsp-ui github "lsp-ui" t)
    ;; YASnippet is a template expansion system.
    (yasnippet melpa "yasnippet" t)
    ;; Magit got git magic
    (magit melpa "magit" t)
    ;; Git-gutter
    (git-gutter melpa "git-gutter" t)
    ;; Nice theme
    (immaterial-theme github "petergardfjall/emacs-immaterial-theme" t)
    ))

(mapc 'se/install-package-with-quelpa
      se/packages-custom-standard)


;; Set the default theme
(load-theme 'immaterial-dark t)

;; Automatically enable linum-mode for all programming modes
(add-hook 'prog-mode-hook 'linum-mode)

;; Default git-gutter for files in git repositories
(global-git-gutter-mode +1)

;; Company mode
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)
