;;; generics.el --- Generic emacs settings

;; Set environment
(setenv "LANG" "en_US.UTF-8")

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Enable winner-mode
(winner-mode 1)

;; Emacs gurus don't need no stinking scroll bars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Enable windmove to quickly change switch buffers.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(setq windmove-wrap-around t)

;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

;; highlight current line
(global-hl-line-mode)

;; Enable display of time, load level, and mail flag in mode lines.
(display-time)

;; Enable cut-and-paste between Emacs and X clipboard.
(setq x-select-enable-clipboard t)

;; Line-wrapping
;;(set-default 'fill-column 80)

;; Get rid of annoying aut-fill-mode
(auto-fill-mode -1)

;; Compilation output
(setq compilation-scroll-output t)

;; Prevent the annoying beep on errors
(setq visible-bell t)

;; Make sure all backup and autosave files only live in one place
;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (format "%s%s%s" temporary-file-directory "emacs" (user-uid)))
(setq server-socket-dir (format "%s/%s" emacs-tmp-dir "server"))

(defconst emacs-autosafe-dir (concat emacs-config-dir "auto-save/"))
(setq auto-save-list-file-prefix (format "%s%s" emacs-autosafe-dir ".saves-")); set prefix for auto-saves
(setq auto-save-file-name-transforms `((".*" ,emacs-autosafe-dir t))); location for all auto-save files
(setq tramp-auto-save-directory emacs-autosafe-dir) ; auto-save tramp files in local directory

(defconst emacs-backup-dir (concat emacs-config-dir ".backups/"))
(setq backup-directory-alist `((".*" . , emacs-backup-dir)))

;; Make backups for files under version control as well.
(setq vc-make-backup-files t)

;; If t, delete excess backup versions silently.
(setq delete-old-versions t)

;; Number of newest versions to keep when a new numbered backup is made.
(setq kept-new-versions 6)

;; Number of oldest versions to keep when a new numbered backup is made.
(setq kept-old-versions 2)

;; Make numeric backup versions unconditionally.
(setq version-control t)

;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; If non-nil, `next-line' inserts newline to avoid `end of buffer' error.
(setq next-line-add-newlines nil)

;; Whether to add a newline automatically at the end of the file.
(setq require-final-newline t)

;; Highlight trailing whitespace
(setq show-trailing-whitespace t)

;; Controls the operation of the TAB key.
(setq tab-always-indent 'complete)

;; The maximum size in lines for term buffers.
(setq term-buffer-maximum-size (* 10 2048))

;; delete seleted text when typing
(delete-selection-mode 1)

;; always use spaces for indentation
(setq-default indent-tabs-mode nil)

;; disable auto-fill-mode
(auto-fill-mode -1)

;;set the full path into frame title
(setq frame-title-format
      '(:eval
        (if buffer-file-name
            (replace-regexp-in-string
             "\\\\" "/"
             (replace-regexp-in-string
              (regexp-quote (getenv "HOME")) "~"
              (convert-standard-filename buffer-file-name)))
          (buffer-name))))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;;; Disable auto-complete
;;;(global-auto-complete-mode -1)


;;; generics.el ends here
