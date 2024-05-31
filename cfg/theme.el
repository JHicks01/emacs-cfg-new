(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "JetBrains Mono-11")

(use-package ef-themes
  :config
  (load-theme 'ef-dark t))

(use-package spacious-padding
  :config
  (spacious-padding-mode t))

(setq-default mode-line-format
'("%e" mode-line-front-space mode-line-modified mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag (vc-mode vc-mode) mode-line-end-spaces))

(setq-default display-line-numbers-type 'relative)
(setq-default display-line-numbers-width-start t)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(column-number-mode)
