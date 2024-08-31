;; 引数にスコアを入力したら点数を計算してくれる関数
;; (1)カテゴリ別に、投票人数で割った後に10をかけて標準化する
;; (2)標準化されたカテゴリの数字を合計する

(defun calculate-normalized-score (score voter)
  (let ((normalized-score(* (/ (float score) voter) 100)))
    (format t "normalized-score: ~a~%" normalized-score)
  normalized-score)
)

(defun calculate-hackathon-score (technical-score technical-voter performance-score performance-voter visual-score visual-voter)
  (let*
    (
      (normalized-technical (calculate-normalized-score technical-score technical-voter))
      (normalized-performance (calculate-normalized-score performance-score performance-voter))
      (normalized-visual (calculate-normalized-score visual-score visual-voter))
      (total-score (+ normalized-technical normalized-performance normalized-visual))
    )
    (format t "Total score: ~a~%" total-score)
    total-score)
)

;; 引数定義
(let (
      (technical-score 2) ;; 技術スコア
      (technical-score-voter 10) ;; 技術スコアの投票者数
      (performance-score 2) ;; パフォーマンススコア
      (performance-score-voter 10) ;; パフォーマンススコアの投票者数
      (visual-score 2) ;;  完成度スコア
      (visual-score-voter 16) ;; 完成度スコアの投票者数
    )
    (calculate-hackathon-score technical-score technical-score-voter 
                              performance-score performance-score-voter
                              visual-score visual-score-voter)
)