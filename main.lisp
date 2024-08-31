;; 引数にスコアを入力したら点数を計算してくれる関数
;; (1)カテゴリ別に、投票人数で割った後に10をかけて標準化する
;; (2)標準化されたカテゴリの数字を合計する

(defun calculate-normalized-score (score voter)
  (let ((normalized-score(* (/ score voter) 10)))
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

(defun calculate-performance-score (performance-score performance-voter))
(defun calculate-visual-score (visual-score visual-voter))
(defun calculate-total-score (total-score))

(calculate-hackathon-score 2 10 3 10 8 16)