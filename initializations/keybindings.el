(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper
(setq ns-command-modifier 'super)  ; make cmd key do super

;; ====================================================
;; Helm - easy search
;; ====================================================
(global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)
;; ====================================================

;; ====================================================
;; projectile - project navigation
;; ====================================================
(require 'projectile)
(define-key projectile-mode-map (kbd "s-x") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

;; helm-projectile
(require 'helm-projectile)
(helm-projectile-on)

;; cmd+f to search across files
(global-set-key (kbd "s-f") #'helm-projectile-ag)

;; cmd+k to search files across project
(global-set-key (kbd "s-k") #'helm-projectile-find-file-dwim)
;; ====================================================

;; multi cursor
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; ====================================================
;; Custom macros
;; ====================================================
(defalias 'replace-double-enter
  (kmacro "M-x r e p l a c e - s t r i n g <return> M-j M-j <return> M-j <return> M-<"))
(global-set-key (kbd "C-c C-r") 'replace-double-enter)
