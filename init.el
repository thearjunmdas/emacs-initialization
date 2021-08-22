;; https://www.emacswiki.org/emacs/DotEmacsModular
(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/package-installations")
(load-directory "~/.emacs.d/initializations")
(load-directory "~/.emacs.d/ide")
(load-directory "~/.emacs.d/orgmode")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/icloud/personal/todos.org"))
 '(org-capture-templates
   '(("b" "Blog Idea" entry
      (file "~/icloud/personal/todos.org")
      "* TODO [Blog] ")
     ("r" "Rubocop" entry
      (file "~/icloud/personal/todos.org")
      "* TODO [Rubocop] ")
     ("g" "Game" entry
      (file "~/icloud/personal/todos.org")
      "* TODO [Game] "))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
