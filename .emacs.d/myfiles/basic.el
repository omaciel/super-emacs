;;(add-to-load-path-recompile (expand-file-name "~/.emacs.d/lisp"))
;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)

(cua-mode 1)            ; PC-mode - replaces old (pc-selection-mode) and (pc-deletion-mode)
(transient-mark-mode 1) ; highlight text selection
(delete-selection-mode 1) ; delete seleted text when typing

;(global-font-lock-mode 1) ; turn on syntax coloring

;(show-paren-mode 1) ; turn on paren match highlighting
;(setq show-paren-style 'expression) ; highlight entire bracket expression

;(global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.
;(column-number-mode 1) ; show columns
;(recentf-mode 1) ; keep a list of recently opened files
;(global-visual-line-mode 1) ; 1 for on, 0 for off.

;(prefer-coding-system 'utf-8)
;(when (display-graphic-p)
;  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


;(require 'uniquify)
;(setq uniquify-buffer-name-style 'forward)
;(setq uniquify-separator "/")
;(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
;(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'post-forward uniquify-separator ":")

