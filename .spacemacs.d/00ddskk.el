;;ddskk
(global-set-key (kbd "C-x j") 'skk-mode)
(with-eval-after-load "ddskk-autoloads"
  (setq mac-pass-control-to-system nil)
  ;;モードで RET を入力したときに確定のみ行い、改行はしない
  (setq skk-egg-like-newline t)
  ;;モードで BS を押した時に一つ前の候補を表示
  (setq skk-delete-implies-kakutei nil)
  ;; "「"を入力したら"」"も自動で挿入する
  (setq skk-auto-insert-paren t)

  ;; 句読点
  (setq-default skk-kutouten-type '("." . ","))
  ;; skk-sticky-key
  (setq skk-sticky-key ";")
  ;; self-insert
  (add-hook 'skk-mode-hook
            '(lambda ()
               (define-key skk-j-mode-map "$" 'self-insert-command)
               (define-key skk-j-mode-map "\\" 'self-insert-command)
               (define-key skk-j-mode-map ";" 'self-insert-command)
               (define-key skk-j-mode-map "?" 'self-insert-command)
               )
            )
  ;; メッセージを日本語で通知する.
  (setq skk-japanese-message-and-error t)
  ;; 動的補完
  (setq skk-dcomp-activate t)
  ;; mimemo
  (if (featurep 'migemo)
      (setq skk-isearch-start-mode 'latin))
  ;; skk-study
  (require 'skk-study)
  (add-hook 'kill-emacs-hook 'skk-study-save)
  ;; skk-search-web
  (require 'skk-search-web)
  (add-to-list 'skk-search-prog-list
	       '(skk-search-web 'skk-google-cgi-api-for-japanese-input)
	       t)
  (add-to-list 'skk-search-prog-list
	       '(skk-search-web 'skk-google-suggest)
	       t))
