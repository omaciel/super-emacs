(defvar super-emacs--my-keyboard-bindings
  '(("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("C->" . ace-jump-mode)
    ("C-<" . ace-jump-mode-pop-mark)
    ("M-/" . undo-tree-visualize)
    ("C-\," . neotree-toggle)
    ("C-M-'" . myterminal-controls-open-controls)
    ("C-c M-x" . execute-extended-command)
    ("M-x" . helm-M-x)
    ("C-x b" . helm-mini)
    ("C-x g" . magit-status)
    ("C-x t" . multi-term)
    ("C-x C-b" . helm-buffers-list)
    ("C-x C-f" . helm-find-files)
    ("C-x C-r" . helm-recentf)
    ("M-y" . helm-show-kill-ring)
    ("C-M-z" . switch-window)
    ("C-S-<up>" . buf-move-up)
    ("C-S-<down>" . buf-move-down)
    ("C-S-<left>" . buf-move-left)
    ("C-S-<right>" . buf-move-right)
    ("C-c a" . pyvenv-workon)
    ("C-c d" . pyvenv-deactivate)
    ("C-c t" . elpy-test-pytest-runner)
    ("<f6>" . datestamp)
    ("<f5>" . super-emacs-reload-current-file)))

(defun super-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'super-emacs-apply-keyboard-bindings
      super-emacs--my-keyboard-bindings)

(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(define-key global-map (kbd "C-c o") 'iedit-mode)

;; Font size controller
(global-set-key (kbd "C-c C-=") 'text-scale-increase)
(global-set-key (kbd "C-c C--") 'text-scale-decrease)

(global-set-key (kbd "C-c C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-.") 'mc/mark-all-like-this)
