;; Place your customizations to 'config-key-bindings.el' here.
;; Future updates to super-emacs will very less likely change this file so that
;; your customizations can remain free of merge conflicts.

;; When you have an active region that spans multiple lines,
;; the following will add a cursor to each line:
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; When you want to add multiple cursors not based on
;; continuous lines, but based on keywords in the buffer:

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
