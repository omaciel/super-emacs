;;; simplenote2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "simplenote2" "simplenote2.el" (22861 4251
;;;;;;  373520 88000))
;;; Generated autoloads from simplenote2.el

(autoload 'simplenote2-create-note-from-buffer "simplenote2" "\
Create a new note from the buffer currently visiting.

This function requests server to create a new note.  The buffer currently
visiting is used as the content of the note.  When the note is created
successfully, the current buffer file is moved to `simplenote2-directory'
and can be handled from the browser screen.

\(fn)" t nil)

(autoload 'simplenote2-setup "simplenote2" "\
Load note database and create directories if needed.

\(fn)" t nil)

(autoload 'simplenote2-browse "simplenote2" "\
Show Simplenote browser screen.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "simplenote2-list" "simplenote2-list.el" (22861
;;;;;;  4251 281520 181000))
;;; Generated autoloads from simplenote2-list.el

(autoload 'simplenote2-list "simplenote2-list" "\
Show Simplenote List buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("simplenote2-pkg.el") (22861 4251 189520
;;;;;;  275000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; simplenote2-autoloads.el ends here
