;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; turn on font-lock mode
(global-font-lock-mode t)

;; enable visual feedback on selections
(setq-default transient-mark-mode t)

;; always end a file with a newline
(setq require-final-newline t)

;; stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)


;; support for mouse wheel
(mwheel-install)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(cua-mode t nil (cua-base))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tooltip-mode nil t))
;;(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 ;;'(custom-variable-tag ((((class color) (background dark)) (:foreground "#1144dd" :weight bold))))
 ;;'(linum ((t (:background "#050505" :foreground "#333")))))


;; set the color theme
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-arjen)
(color-theme-mistyday)

(setq inhibit-startup-message t)
(xterm-mouse-mode)
(setq make-backup-files nil) 

(setq-default py-indent-offset 2)


(global-hl-line-mode 1)
(setq hl-line-sticky-flag t)
(set-face-background 'hl-line "#111111")
(set-face-background 'hl-line "#dddddd")
(set-face-foreground 'hl-line "#000000")

(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)    
(setq linum-format "%d ")
(global-linum-mode 1)

(add-hook 'python-mode-hook
  (lambda() (linum-mode 1)))

(global-set-key (kbd "C-z") 'undo) ; Ctrl+z
(global-set-key (kbd "C-S-z") 'redo) ;  Ctrl+Shift+z

(column-number-mode 1)



;;git

(setq load-path (cons (expand-file-name "/usr/share/doc/git-core/contrib/emacs") load-path))
(require 'vc-git)
(when (featurep 'vc-git) (add-to-list 'vc-handled-backends 'git))
(require 'git)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)
