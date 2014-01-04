(require 'package)
(add-to-list 'load-path "~/Dropbox/emacs")
(load "globalemacs")
;;(set-default-font "Source Code Pro-11")

(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)

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

