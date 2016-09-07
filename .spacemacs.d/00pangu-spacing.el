;; pangu-spaceing
;;http://rubikitch.com/tag/packagepangu-spacing/
  ;;; chinse-two-byte→japaneseに置き換えるだけで日本語でも使える
(setq pangu-spacing-chinese-before-english-regexp
      (rx (group-n 1 (category japanese))
          (group-n 2 (in "a-zA-Z0-9"))))
(setq pangu-spacing-chinese-after-english-regexp
      (rx (group-n 1 (in "a-zA-Z0-9"))
          (group-n 2 (category japanese))))
  ;;; 見た目ではなくて実際にスペースを入れる
(setq pangu-spacing-real-insert-separtor t)
;; text-modeやその派生モード(org-mode等)のみに使いたいならこれ
(add-hook 'text-mode-hook 'pangu-spacing-mode)
;; すべてのメジャーモードに使ってみたい人はこれを
;; (global-pangu-spacing-mode 1)
