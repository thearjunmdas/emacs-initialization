(setq path-to-ctags "/opt/homebrew/bin/ctags") ;; should be the location of your ctags installation

(defun create-tags (dir-name)
    "Create tags file."
    (interactive "DDirectory: ")
    (shell-command
     (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name))))

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



