;; ===================================================================
;; Package manager
;; straight.el: next-generation, purely functional package manager
;; for the Emacs hacker.
;; ===================================================================
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(straight-use-package 'helm)
(straight-use-package 'helm-ag)
(straight-use-package 'seeing-is-believing)
(straight-use-package 'projectile)
(straight-use-package 'helm-projectile)
(straight-use-package 'rvm)
(straight-use-package 'exec-path-from-shell)
(straight-use-package 'solarized-theme)
(straight-use-package 'magit)
(straight-use-package 'auto-complete)
(straight-use-package 'markdown-mode)
(straight-use-package 'popwin)
(straight-use-package 'direx)
(straight-use-package 'rubocop)
(straight-use-package 'ox-hugo)
(straight-use-package 'gnuplot)
(straight-use-package 'gnuplot-mode)
(straight-use-package 'org-edna)
(straight-use-package 'fzf)
;; This library copies important environment variables from the
;; user's shell
(straight-use-package 'exec-path-from-shell)
;; ====================== End of initialization ======================
