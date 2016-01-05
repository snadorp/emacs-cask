;;Disable miminmizing
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "C-x C-z") nil)

;;Rectangle edit mode
(global-set-key (kbd "M-SPC") 'rectangle-mark-mode)
;; smex
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-x") 'smex)

;; ace jump
;;(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)

;; ace window
(global-set-key (kbd "s-w") 'ace-window)

;; ido
(global-set-key (kbd "C-x b") 'ido-switch-buffer)

;; clojure
(global-set-key (kbd "C-c C-.") 'clojure-test-run-test)

;; ruby
(global-set-key (kbd "C-c ,") 'ruby-test-run)
(global-set-key (kbd "C-c M-,") 'ruby-test-run-at-point)

;; magit
(global-set-key (kbd "C-c g") 'magit-status)

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; projectile
(global-set-key (kbd "C-x f") 'projectile-find-file)
(global-set-key (kbd "C-x C-b") 'projectile-switch-to-buffer)
(global-set-key (kbd "C-c C-p") 'projectile-switch-project)

;; general
(global-set-key (kbd "C-x h") 'mark-whole-buffer)
(global-set-key (kbd "C-c n") 'esk-cleanup-buffer)   ;; Perform general cleanup.
(global-set-key (kbd "C-c q") 'join-line)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-RET") 'newline)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") (lambda () (interactive)(text-scale-set 0)))

;; Search cutomization
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;; File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)

;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; Fix side scrolling
(global-set-key [wheel-right] 'scroll-left)
(global-set-key [wheel-left] 'scroll-right)
