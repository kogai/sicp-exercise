; 練習問題 2.41:
; ある整数n以下の異なる正の整数が大小順に並んだ三つ組i, j, k の中で、合計がある整数sとなるものすべてを見つける手続きを書け。

(define (range n m)
  (if (= n m)
    ()
    (cons n (range (+ n 1) m))))

(define (answer n s)
  ; (let (xs (range 1 n))
  ;   0)
    (let ((xs (range 1 n))) xs))

(display (answer 10 15))
; (display (range 0 10))
