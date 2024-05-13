(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; Performance tweaking
(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

;; Remove UI clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

;; Font
(set-face-attribute 'default nil :font "JetBrains Mono-11")

;; Unique buffer names for matching files, very useful when dealing
;; with lots of index.ts, for example
(require 'uniquify)

;; Misc. settings
;; Use `C-h v` to read the docs on the individual options
(electric-pair-mode t)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(save-place-mode t)
(savehist-mode t)
(recentf-mode t)
(global-auto-revert-mode t)

;; Display line numbers when in programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(setq uniquify-buffer-name-style 'forward
      window-resize-pixelwise t
      frame-resize-pixelwise t
      load-prefer-newer t
      backup-by-copying t
      custom-file (expand-file-name "custom.el" user-emacs-directory))

(unless package-archive-contents
  (package-refresh-contents))

;; Great looking theme
(use-package modus-themes
  :ensure t
  :config
  (load-theme 'modus-vivendi-tinted t))

(use-package spacious-padding
  :ensure t
  :config
  (spacious-padding-mode t))

(setq-default mode-line-format
'("%e" mode-line-front-space mode-line-modified mode-line-frame-identification mode-line-buffer-identification mode-line-position evil-mode-line-tag (vc-mode vc-mode) mode-line-end-spaces))

;; Code-completion at point
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :custom
  (company-idle-delay 0))
  
;; Better minibuffer completions and project searching
(use-package vertico
  :ensure t
  :custom
  (vertico-cycle t)
  (read-buffer-completion-ignore-case t)
  (read-file-name-completion-ignore-case t)
  (completion-styles '(basic substring partial-completion flex))
  :init
  (vertico-mode))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :after vertico
  :ensure t
  :init
  (marginalia-mode))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
