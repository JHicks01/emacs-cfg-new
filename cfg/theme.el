(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "JetBrains Mono-12")

(use-package modus-themes
  :config
  (setq modus-themes-common-palette-overrides
        '((fg-line-number-inactive "gray50")
          (fg-line-number-active fg-main)
          (bg-line-number-inactive unspecified)
          (bg-line-number-active unspecified)))
  (load-theme 'modus-vivendi t))

(use-package spacious-padding
  :config
  (setq spacious-padding-subtle-mode-line t)
  (spacious-padding-mode t))

(setq-default mode-line-format
'("%e" mode-line-front-space mode-line-modified mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag (vc-mode vc-mode) mode-line-end-spaces))

(setq-default display-line-numbers-type 'relative)
(setq-default display-line-numbers-width-start t)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(column-number-mode)
