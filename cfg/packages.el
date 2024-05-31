(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-idle-delay 0))

(use-package consult
  :config
  (setq consult-line-start-from-top t))
  
(use-package vertico
  :custom
  (vertico-cycle t)
  (read-buffer-completion-ignore-case t)
  (read-file-name-completion-ignore-case t)
  (completion-styles '(basic substring partial-completion flex))
  :init
  (vertico-mode))

(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package savehist
  :init
  (savehist-mode))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(use-package all-the-icons-completion
  :after (marginalia all-the-icons)
  :hook (marginalia-mode . all-the-icons-completion-marginalia-setup)
  :init
  (all-the-icons-completion-mode))

;; Avy
(use-package avy)

;;Yasnippet
(use-package yasnippet
  :config
  (yas-global-mode))

;;Column Enforce Mode
(use-package column-enforce-mode
  :config
  (setq column-enforce-column '100)
  (add-hook 'prog-mode-hook 'column-enforce-mode))

;;Popwin
(use-package popwin
  :config
  (popwin-mode)
  (setq popwin:popup-window-height 21))

;; Smooth Scrolling
(use-package smooth-scrolling
  :config
  (setq scroll-step 1)
  (setq scroll-conservatively 10000)
  (do-smooth-scroll))

;; Which Key
(use-package which-key
  :config
  (which-key-mode))

(use-package magit)
