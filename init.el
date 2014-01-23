(require 'package)

;; Change tabs to spaces
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)

;; Put backups in folder in ~
(setq backup-directory-alist `(("." . "~/.emacs-backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'uniquify)
(show-paren-mode 1)
(setq show-paren-delay 0)
(transient-mark-mode 1)
(require 'ibuffer)
;(blink-cursor-mode 1)
(line-number-mode 1)
(global-linum-mode 1)

(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))

(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq visible-bell t)

;; F11 toggles fullscreen
;(toggle-frame-fullscreen)
;; Remove scroll bar
(scroll-bar-mode 0)

;; Turn off tool bars and menus
(tool-bar-mode 0)
(menu-bar-mode 0)

