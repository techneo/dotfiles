;; melpa is a replacement for elpa and has more latest packages
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))


(setq inhibit-startup-screen t)
(menu-bar-mode 1)
(tool-bar-mode 1)

(setq backup-directory-alist '(("." . "~/emacs_saves")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" default))
 '(package-selected-packages '(gruber-darker-theme smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'ido)
(ido-mode t)

;; to close the non file based bufferes.
(defun close-non-file-buffers ()
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (buffer-file-name buffer) ;; Checks if the buffer is associated with a file
      (kill-buffer buffer))))



;; custom key bindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-x C-e") 'counsel-find-file)
(global-set-key (kbd "C-c C-n") 'close-non-file-buffers)
