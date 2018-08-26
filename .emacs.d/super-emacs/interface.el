;Change title-bar text
(setq frame-title-format
      "super-emacs")

;Disable menu-bar
(menu-bar-mode -1)

;Disable tool-bar
(tool-bar-mode -1)

;Disable scroll-bar
(scroll-bar-mode -1)

;Activate material theme
(load-theme 'zenburn t)

;Set font
(custom-set-faces
 '(default ((t (:height 120)))))

;; Use ace-window for windows navigation
;; It displays a number next to the window to move to
(global-set-key [remap other-window] 'ace-window)
(custom-set-faces
 '(aw-leading-char-face
   ((t (:inherit ace-jump-face-foreground :height 3.0)))))
