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
;; TODO states
(setq org-todo-keywords
      '((sequence "TODO(t)" "FOLLOWUP(f)" "|" "CANCELLED(c)" "DONE(d)")))
(setq org-todo-keyword-faces
  '(("TODO" . (:foreground "#ff39a3" :weight bold))
))
