;;; dired-launch-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "dired-launch" "dired-launch.el" (22861 2898
;;;;;;  771269 241000))
;;; Generated autoloads from dired-launch.el

(autoload 'dired-launch-command "dired-launch" "\
Attempt to launch appropriate executables on marked files in the current dired buffer.

\(fn)" t nil)

(autoload 'dired-launch-with-prompt-command "dired-launch" "\
For each marked file in the current dired buffer, prompt user to specify an executable and then call the specified executable using that file.

\(fn)" t nil)

(autoload 'dired-launch-mode "dired-launch" "\
Add commands to launch executables.

\(fn &optional ARG)" t nil)

(autoload 'dired-launch-enable "dired-launch" "\
Ensure that `dired-launch-mode' will be enabled in `dired-mode'.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dired-launch-autoloads.el ends here
