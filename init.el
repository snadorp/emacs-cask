;;; init --- Iniitialisation file for cask based
;;; Code:

;; Enable a backtrace when problems occur
(setq debug-on-error t)

;;; Require and execute cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;;; Initialize packages

(setq emacs-config-dir (file-name-directory
                        (or (buffer-file-name) load-file-name)))

(defconst *emacs-config-dir* (concat emacs-config-dir "configs/" ""))

;; A function to load config files
(defun load-config-files (files)
  (dolist (f files)
    (load (expand-file-name
           (concat *emacs-config-dir* f)))
    (message "Loaded config file: %s" f)))

(load-config-files
 '())

;;; init.el ends here
