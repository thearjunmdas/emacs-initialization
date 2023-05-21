(defun ruby-remove-trailing-whitespaces ()
  "Remove all extra whitespaces from the current buffer."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "\\s-+$" nil t)
      (replace-match ""))))

(defun my-ruby-mode-hook ()
  (auto-complete-mode 1)                      ; Enable auto-complete-mode
  (toggle-truncate-lines 1)                   ; Enable truncate-lines  
  (add-hook 'before-save-hook 'ruby-remove-trailing-whitespaces nil t))

(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)

