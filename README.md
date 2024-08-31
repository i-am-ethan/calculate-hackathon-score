# calculate-hackathon-score

<img src="./lisp_alien.png" alt="lisp alien" />

## 実行方法

### (1)cloneする
`git clone https://github.com/i-am-ethan/calculate-hackathon-score.git`

### (2)引数を変更する
main.lispの引数を変更します。
```lisp
(technical-score 2) ;; 技術スコア
(technical-score-voter 10) ;; 技術スコアの投票者数
(performance-score 2) ;; パフォーマンススコア
(performance-score-voter 10) ;; パフォーマンススコアの投票者数
(visual-score 2) ;;  完成度スコア
(visual-score-voter 16) ;; 完成度スコアの投票者数
```

### lisp fileを実行する

`sbcl --script main.lisp`