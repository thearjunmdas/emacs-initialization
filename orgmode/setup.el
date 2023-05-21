(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-log-done 'time)
(setq org-use-speed-commands t)
(setq org-startup-indented t)
(setq org-indent-indentation-per-level 2)
(setq org-goto-interface 'outline-path-completion
      org-goto-max-level 10)

;; Export settings
(setq org-export-with-toc nil)
(setq org-export-headline-levels 0)
(setq org-export-with-section-numbers 0)

;; Priorities
(setq org-priority-highest 1)
(setq org-priority-lowest 64)
(setq org-priority-default 30)

;; TODO states #ff39a3
(setq org-todo-keywords
      '((sequence "TODO(t)" "RECU(r)" "FOLL(f)" "|" "CANCELLED(c)" "DONE(d)")))
(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "#cc241d" :weight bold))
        ("RECU" . (:foreground "#d79921" :weight bold))
        ("FOLL" . (:foreground "#458588" :weight bold))
        ("CANCELLED" . (:foreground "#7c6f64" :weight bold))
        ("DONE" . (:foreground "#689d6a" :weight bold)))) 
;; org template customisation
(add-hook 'org-capture-mode-hook #'org-align-all-tags)

;;Load edna
(require 'org-edna)

;; Always necessary
(org-edna-mode)


