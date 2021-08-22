;; popwin also ensure C-g closing of tmp buffers
(require 'popwin)
(popwin-mode 1)

;; Opens up a side menu witht he current folder
(require 'direx)
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
