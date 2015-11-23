;;; osx.el --- OSX specific configurations
;; only run this stuff when using osx
(when (eq system-type 'darwin)
  ;; http://www.emacswiki.org/emacs/EmacsApp

  ;; path madness when using OSX:
  ;; http://stackoverflow.com/questions/2266905/emacs-is-ignoring-my-path-when-it-runs-a-compile-command
  ;; remove path_helper shit from /etc/zshenv

  ;; This variable describes the behavior of the command key.
  (setq mac-option-key-is-meta t)
  (setq mac-right-option-modifier nil)
  (setq mac-allow-anti-aliasing t)
  '(mouse-wheel-scroll-amount (quote (0.01))))

;;; osx.el ends here
