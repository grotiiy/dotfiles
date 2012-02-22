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



;; set the color theme
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)


(setq inhibit-startup-message t)
(xterm-mouse-mode)
(setq make-backup-files nil) 

(setq-default py-indent-offset 2)


(global-hl-line-mode 1)
(setq hl-line-sticky-flag t)
(set-face-background 'hl-line "#111111")

(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)    
(setq linum-format "%d ")
(global-linum-mode 1)

(add-hook 'python-mode-hook
  (lambda() (linum-mode 1)))

(global-set-key (kbd "C-z") 'undo) ; Ctrl+z
(global-set-key (kbd "C-S-z") 'redo) ;  Ctrl+Shift+z

(column-number-mode 1)

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")

(require 'auto-complete)
(global-auto-complete-mode t)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base)))


(global-set-key [f3] 'shell)

(put 'downcase-region 'disabled nil)

(require 'color-theme-almost-monokai)
;;(color-theme-arjen)
(color-theme-almost-monokai)


(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-shortcuts nil)
(setq ropemacs-local-prefix "C-c C-p")


(global-set-key (kbd "M-,") 'rope-lucky-assist)
