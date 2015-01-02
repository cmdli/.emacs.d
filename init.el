;; Chris de la Iglesia

;; Init package system
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Change tabs to spaces
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)

;; Put backups in folder in ~
(setq backup-directory-alist `(("." . "~/.emacs-backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Download packages
(setq package-list '(solarized-theme ibuffer graphene scala-mode2))
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; Use packages
(load-theme 'solarized-dark t)
;(require 'uniquify)
(show-paren-mode 1)
(setq show-paren-delay 0)
(transient-mark-mode 1)
;(require 'ibuffer)
;(blink-cursor-mode 1)
(line-number-mode 1)
(global-linum-mode 1)
;(require 'graphene)

;; Scratch buffer on startup
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq visible-bell t)

;; F11 toggles fullscreen
;(toggle-frame-fullscreen)
;; Remove scroll bar
(scroll-bar-mode 0)

;; Turn off tool bars and menus
(tool-bar-mode 0)

