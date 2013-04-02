(require 'magit)

;;utf-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;;xclip
;;(xclip-mode 1)

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

;;(add-hook 'python-mode-hook
;;  (lambda() (linum-mode 1)))

(global-set-key (kbd "C-z") 'undo) ; Ctrl+z
(global-set-key (kbd "C-S-z") 'redo) ;  Ctrl+Shift+z

(column-number-mode 1)

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")


;;(require 'auto-complete)
;;(global-auto-complete-mode t)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base)))


(global-set-key [f3] 'shell)

(put 'downcase-region 'disabled nil)

;;(load-file "~/.emacs.d/color-theme-almost-monokai.el")
;;(require 'color-theme-almost-monokai)
;;(color-theme-arjen)
;;(color-theme-almost-monokai)

;;(load-file "~/.emacs.d/tomorrow.el")

(autoload 'markdown-mode "~/.emacs.d/markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

(autoload 'jinja2-mode "~/.emacs.d/jinja2/jinja2.el"
   "Major mode for editing Jinja files" t)
(setq auto-mode-alist
   (cons '("\\.html" . jinja2-mode) auto-mode-alist))



(icomplete-mode)
(iswitchb-mode)

(setq tramp-default-method "ssh")


(load-file "~/dotfiles/emacs-for-python/epy-init.el")
(epy-setup-checker "pyflakes %f")

(set-face-background 'flymake-errline "red")
(set-face-foreground 'flymake-errline "black")

(set-face-background 'flymake-warnline "orange")


(epy-django-snippets)


(setq skeleton-pair nil)


;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

