(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; This is only needed once, near the top of the file
(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)

(unless package-archive-contents
  (package-refresh-contents))

(load-file "~/.emacs.d/cfg/packages.el")
(load-file "~/.emacs.d/cfg/theme.el")
(load-file "~/.emacs.d/cfg/major-modes.el")
(load-file "~/.emacs.d/cfg/misc.el")
(load-file "~/.emacs.d/cfg/keys.el")
