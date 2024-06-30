(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "JetBrains Mono-12")

(use-package catppuccin-theme
  :config
  (load-theme 'catppuccin t))

(use-package doom-modeline
  :config
  (doom-modeline-mode))

(setq ns-use-proxy-icon nil)

(setq-default display-line-numbers-type 'relative)
(setq-default display-line-numbers-width-start t)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(column-number-mode)
