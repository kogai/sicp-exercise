; 練習問題 3.1: アキュムレータ (accumulator) は、ひとつの数値引 数を伴って繰り返し呼ばれる手続きで、引数を合計に集積してい くというものである。
; 呼び出されるたびに現在までに集積された 合計を返す。それぞれ独立した合計を持つアキュムレータを返す 手続きmake-accumulatorを書け。
; make-accumulatorへの入力は、 合計の初期値を指定する。例えば、以下のようになる。
; (define A (make-accumulator 5))
; (A 10)
; 15
; (A 10)
; 25

(define (make-accumulator acc)
  (lambda (next)
      (begin
        (set! acc (+ next acc))
        acc)))

(define A (make-accumulator 5))
(print (A 10))
(print (A 10))
