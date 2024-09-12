;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

(setq user-full-name "Gooxey"
      user-mail-address "dennis.tiderko@gmail.com")

(setq org-directory "~/org/")

;; theme
(setq doom-theme 'doom-gruvbox)
(set-frame-parameter nil 'alpha-background 70)

(setq display-line-numbers-type 'relative)

;; color column
(setopt display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq scroll-margin 8)
(setq-default indent-tabs-mode nil)

;; projectile
(setq projectile-auto-discover t)
(setq projectile-project-search-path '(("~/coding" . 4)))
;; zig support
;; (projectile-register-project-type 'zig '("build.zig")
;;                                   :project-file "build.zig"
;;                                   :compile "zig build"
;;                                   :test "zig build test"
;;                                   :run "zig build run")

;; lsp
(setq lsp-inlay-hint-enable t)
