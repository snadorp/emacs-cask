;;; init --- Iniitialisation file for cask based
;;; Code:

;; Enable a backtrace when problems occur
(setq debug-on-error t)

(setq emacs-config-dir (file-name-directory
                        (or (buffer-file-name) load-file-name)))

;;; Require and execute cask
(require 'cask (let ((linux-path "~/.cask/cask.el")
                     (osx-path "/usr/local/share/emacs/site-lisp/cask/cask.el"))
                 (cond ((file-exists-p linux-path) linux-path)
                       ((file-exists-p osx-path) osx-path))))

(cask-initialize emacs-config-dir)

;;; Initialize packages

(defconst *emacs-config-dir* (concat emacs-config-dir "configs/" ""))
(defconst *emacs-custom-dir* (concat emacs-config-dir "custom/" ""))
;; A function to load config files
(defun load-config-files (config files)
  (dolist (f files)
    (load (expand-file-name
           (concat config f)))
    ;;(message "Loaded config file: %s" f)
    ))

;;; Set the proper shell before doing anything else
(when (eq system-type 'darwin)
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

;; Set proper color theme
(load-theme 'sanityinc-tomorrow-night t)

(load-config-files *emacs-config-dir*
                   '("nyan-mode"
                     "ido-mode"
                     "ido-vertical-mode"
                     "cider"
                     "company"
                     "ensime"
                     "popwin"
                     "projectile"
                     "rainbow-delimiters"
                     "ruby-mode"
                     "rvm"
                     "smooth-scrolling"
                     "yas-snippet"
                     "neotree"
                     ))

(load-config-files *emacs-custom-dir*
                   '("generics"
                     "functions"
                     "starter-kit-defuns"
                     "osx"
                     "x60"
                     "key-bindings"))

(message "Setup is done, happy hacking!")
;;; init.el ends here
(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
