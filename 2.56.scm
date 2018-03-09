; 練習問題 2.56:
; より多くの種類の式を扱えるようにこの基本的な微分プログラムを拡張するにはどうすればよいかを示せ。
; 例えば、 次の微分規則を実装せよ。
; 実装にあたっては、deriv プログラムに新しい節を追加し、
; また exponentiation?, base, exponent, make-exponentiation を適切 に定義せよ
; (冪乗の表現には ** という記号を使ってもよい)。任意の数の0乗は1であり、任意の数の1乗はそれ自身であるという 規則を組み込め。

(define (display_endline x)
  (begin
    (display x)
    (display "\n")))
    
(define (** b e)
  (if (= e 0)
    1
    (* b (** b (- e 1)))))

(display_endline (** 2 0)) ; 1
(display_endline (** 2 1)) ; 2
(display_endline (** 2 2)) ; 4
(display_endline (** 2 3)) ; 8
(display_endline (** 3 3)) ; 27
