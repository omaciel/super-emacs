;; Place your customizations to 'config-packages.el' here.
;; Future updates to super-emacs will very less likely change this file so that
;; your customizations can remain free of merge 

(defvar se/packages-custom-standard
  '(;; Related to golang
    (go-mode github "dominikh/go-mode.el" t)
    (lsp-mode github "emacs-lsp/lsp-mode" t)
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

;; Default git-gutter for files in git repositories
(global-git-gutter-mode +1)

;; Load go-mode automatically when opening a .go file
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp-deferred)
;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
(with-eval-after-load 'lsp-mode
  ;; :global/:workspace/:file
  (setq lsp-modeline-diagnostics-enable t))
