;; Performance tweaking
(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

(setq inhibit-startup-screen t)
(setq initial-scratch-message '"")

(require 'uniquify)

(electric-pair-mode t)
(show-paren-mode 1)
(setq-default indent-tabs-mode nil)
(save-place-mode t)
(global-auto-revert-mode t)
(setq c-basic-offset 2)

(recentf-mode t)
(setq recentf-max-saved-items 500)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(setq create-lockfiles nil)
(setq make-backup-files nil)

(setq ring-bell-function 'ignore)
