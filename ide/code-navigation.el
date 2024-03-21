(setq path-to-ctags "/usr/local/bin/ctags") ;; should be the location of your ctags installation


;; Set up create-tags
(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name))))

;; Generate and auto-load tags
(defun my-create-and-visit-tags ()
  "Create tags file and then visit it."
  (interactive)
  (call-interactively 'create-tags)
  (let ((tags-path (concat (file-name-as-directory (directory-file-name default-directory)) "TAGS")))
    (visit-tags-table tags-path)))

(global-set-key (kbd "C-c t") 'my-create-and-visit-tags)


;; To close tags buffer after navigation
(defun close-xref-buffer-after-navigation ()
  "Close the *xref* buffer after navigation."
  (when-let (buf (get-buffer "*xref*"))
    (kill-buffer buf))
  (delete-duplicate-windows)
  (delete-other-windows))

(defun delete-duplicate-windows ()
  "Remove all windows displaying the current buffer, except the current window."
  (let ((current-buffer (current-buffer)))
    (walk-windows
     (lambda (window)
       (when (and (not (eq window (selected-window)))
                  (eq (window-buffer window) current-buffer))
         (delete-window window)))
     nil
     'visible)))

(add-hook 'next-error-hook 'close-xref-buffer-after-navigation)
