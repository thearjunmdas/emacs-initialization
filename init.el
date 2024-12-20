;; https://www.emacswiki.org/emacs/DotEmacsModular
(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/package-installations")
(load-directory "~/.emacs.d/initializations")
(load-directory "~/.emacs.d/ide")
(load-directory "~/.emacs.d/orgmode")

(use-package fzf
  :bind ("C-S-s" . arjun/fzf/findfiles)
  :bind ("C-S-b" . arjun/fzf/bookmarks)
  :bind ("C-S-r" . arjun/fzf/recurring)
  :bind ("C-S-f" . arjun/fzf/globalsearch)
  ;; Don't forget to set keybinds!
  
  :config
  (setq fzf/args "-x --color bw --print-query --margin=1,0 --no-hscroll "
        fzf/executable "fzf"
        fzf/git-grep-args "-i --line-number %s"
        ;; command used for `fzf-grep-*` functions
        ;; example usage for ripgrep:
        ;; fzf/grep-command "rg --no-heading -nH"
        fzf/grep-command "grep -nrH"
        ;; If nil, the fzf buffer will appear at the top of the window
        fzf/position-bottom t
        fzf/window-height 15)

  (defun arjun/fzf/findfiles ()
    (interactive)
    (fzf-with-command nil #'fzf/action-find-file "~/development"))

  (defun arjun/fzf/bookmarks ()
    (interactive)
    (fzf-with-command "ag -f -G bookmarks.org --nobreak --noheading . | gawk 'match($0, /^(.+)\\*.+\\[\\[(.+)\\]\\[(.+)\\]\\]/, a) { print a[1] \" \" a[3] \" <\" a[2] \">\"}'" #'fzf/action-find-file-with-line "~/icloud/personal")
    )

  (defun arjun/fzf/recurring ()
    (interactive)
    (fzf-with-command "ag -f -G recurring.org --nobreak --noheading . | gawk 'match($0, /^(.+)\\* RECU \\[(.+)\\] (.+)$/, a) { print a[1] \" \"a[3]}'" #'fzf/action-find-file-with-line "~/icloud/personal")
    )

  (defun arjun/fzf/globalsearch ()
    (interactive)
    (fzf-with-command "ag -f -G .org --nobreak --noheading ." #'fzf/action-find-file-with-line "~/development")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/icloud/personal/recurring.org" "/Users/arjundas/icloud/personal/2023/q2.org"))
 '(org-capture-templates
   '(("b" "Create a bookmark" entry
      (file "~/icloud/personal/bookmarks.org")
      "* [[%^C][%^]]%?" :immediate-finish t)
     ("u" "urgent items" entry
      (file "/Users/arjundas/icloud/personal/2023/q2.org")
      "* TODO [#0] %^{Item description}\12DEADLINE: %t\12:PROPERTIES:\12:CREATED: %T\12:END:\12" :immediate-finish t)
     ("t" "todo" entry
      (file "/Users/arjundas/icloud/personal/2023/q2.org")
      "* TODO [#%^{In how many days to be completed?|3|6|13|17|23|}] %^{Item description}\12DEADLINE: %^t\12:PROPERTIES:\12:CREATED: %T\12:END:\12" :immediate-finish t)
     ("r" "Recurring todo" entry
      (file "~/icloud/personal/recurring.org")
      "* RECU [#%^{In how many days, should it repeat?|3|6|13|17|23|}] %^{Item description}\12DEADLINE: %^t\12:PROPERTIES:\12:TRIGGER: self deadline!(\"+%^{In how many days, should it repeat?|3|6|13|17|23|}weekday\") todo!(\"RECU\")\12:END:" :immediate-finish t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


