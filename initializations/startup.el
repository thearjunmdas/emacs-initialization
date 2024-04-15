;; This sets $MANPATH, $PATH and exec-path from your shell,
;; only when executed in a GUI - OSX
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Hide the startup message
(setq inhibit-startup-message t)

;; Disable backup files
(setq make-backup-files nil)

;; Set fontsize
(set-face-attribute 'default nil :height 150)

;; Ox-hugo init
(with-eval-after-load 'ox
  (require 'ox-hugo))

;; Enable auto-save-mode
(auto-save-mode 1)

;; Set the auto-save interval (in seconds)
(setq auto-save-interval 60)
