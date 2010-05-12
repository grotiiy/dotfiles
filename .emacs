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


;;to set the cursor color
(set-cursor-color "red")

;;to set foreground color to white
(set-foreground-color "white")

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
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(custom-variable-tag ((((class color) (background dark)) (:foreground "#1144dd" :weight bold))))
 '(linum ((t (:background "#050505" :foreground "#333")))))

;;(tool-bar-mode -1)

(require 'color-theme)
(setq color-theme-is-global t)
;;(load-file "/home/yigit/inspiration675249.el")
;;(color-theme-inspiration-675249)
(color-theme-arjen)


(setq inhibit-startup-message t)
(xterm-mouse-mode)
(setq make-backup-files nil) 

(setq-default py-indent-offset 2)

;;(setq frame-title-format "emacs - %b - %f")
(global-hl-line-mode 1)
;;(setq hl-line-sticky-flag t)
(set-face-background 'hl-line "#1a1a1a")


(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)    
(setq linum-format "%d ")
(global-linum-mode 1)

(add-hook 'python-mode-hook
  (lambda() (linum-mode 1)))
