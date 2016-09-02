;; migemo
(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs" "-i" "\a"))
(cond
 ((eq system-type 'darwin)
  (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
  )
 ((eq system-type 'gnu/linux)
  (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
  )
 ((eq system-type 'windows-nt)
  (setq migemo-dictionary "c:/app/cmigemo-default-win64/dict/utf-8/migemo-dict")
  ))
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
;; initialize migemo
(migemo-init)
;;
(with-eval-after-load "helm"
  (helm-migemo-mode +1)
  )
;; avy-migemo
(require 'avy-migemo)
(avy-migemo-mode 1)
