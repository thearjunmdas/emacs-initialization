;; open agenda in current window
(setq org-agenda-window-setup (quote current-window))
;; warn me of any deadlines in next 7 days
(setq org-deadline-warning-days 0)
;; show me tasks scheduled or due in next fortnight
(setq org-agenda-span (quote fortnight))
;; don't show tasks as scheduled if they are already shown as a deadline
(setq org-agenda-skip-scheduled-if-deadline-is-shown t)
;; don't give warning colour to tasks with impending deadlines
;; if they are scheduled to be done
(setq org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
;; don't show tasks that are scheduled or have deadlines in the
;; normal todo list
(setq org-agenda-todo-ignore-deadlines (quote all))
(setq org-agenda-todo-ignore-scheduled (quote all))
;; sort tasks in order of when they are due and then by priority
(setq org-agenda-sorting-strategy
  (quote
   ((agenda priority-down deadline-up)
    (todo priority-down category-keep)
    (tags priority-down category-keep)
    (search category-keep))))
;; this will ensure org refile shows current file as well
(setq org-refile-use-outline-path 'file)

;; Shows all the agenda files where nodes can be refiled
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)))
