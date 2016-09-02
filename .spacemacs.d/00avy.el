;; avy
;; http://oremacs.com/2016/01/23/avy-0.4.0/
(global-set-key (kbd "M-g SPC") 'avy-goto-word-1)
(global-set-key (kbd "M-g `") 'avy-pop-mark)
(global-set-key (kbd "M-g y") 'avy-goto-line)
(global-set-key (kbd "M-g t") 'avy-goto-char-timer)
(global-set-key (kbd "M-g w") 'avy-goto-word-0)
;; ace-jump-helm-line (C-q)
                                        ;
;; avy-zap
;;http://rubikitch.com/2016/02/15/sd1507-builtin/
;;http://rubikitch.com/2015/05/31/avy-zap/
(global-set-key (kbd "M-z") 'avy-zap-to-char)
(global-set-key (kbd "M-Z") 'avy-zap-up-to-char)
(spacemacs/set-leader-keys
  "xz" 'avy-zap-to-char
  "xZ" 'avy-zap-up-to-char)
(require 'misc)
(global-set-key (kbd "C-M-z") 'zap-to-char)
(global-set-key (kbd "C-M-S-z") 'zap-up-to-char)

