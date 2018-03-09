; eq? を実装する
(define-module 2.54)

(define (eqaul_? a b)
  (if (and (eq? a '()) (eq? b '()))
    #t
    (and
      (eq? (car a) (car b))
      (eqaul_? (cdr a) (cdr b)))))

(display (eqaul_? '(a b c) '(a b c))) ; #t
(display (eqaul_? '(a b c) '(d (e e) f))) ; #f
