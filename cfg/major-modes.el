;; C/C++
(use-package cc-mode)
(use-package cmake-mode)

;; Rust
(use-package rust-mode)

;; LSP
(use-package lsp-mode
  :init
  (setq lsp-clangd-version "18.1.3")
  :config
  (add-hook 'c-mode-hook #'lsp-deferred)
  (add-hook 'c++-mode-hook #'lsp-deferred)
  (add-hook 'rust-mode-hook #'lsp-deferred)
  (add-hook 'python-mode-hook #'lsp-deferred)

  (setq lsp-rust-server 'rust-analyzer)

  (use-package lsp-ui))

;; Asm
(add-hook 'asm-mode-hook (lambda()
                           (local-set-key (kbd "RET")
                                          'electric-indent-just-newline)))

;; Haskell
(use-package haskell-mode)

;; Markdown
(use-package markdown-mode)

;; Org
(setq org-src-fontify-natively t)
(add-hook 'org-mode-hook (lambda() (visual-line-mode)))
