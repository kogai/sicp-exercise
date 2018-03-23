(define (display-endline x)
  (begin
    (display x)
    (display "\n")))

(define (element-of-set? x set)
  (cond
    ((null? set) #f)
    ((= x (car set)) #t)
    ((< x (car set)) #f)
    (else (element-of-set? x (cdr set)))))

(define (union-set set1 set2)
  (cond
    ((null? set1) set2)
    (predicate1 consequent1)
    (predicate2 consequent2)))
; (define (adjoin-set x set)
;   (cond
;     ((null? set) '(x))
;     ((= x (car set)) set)
;     ((< x (car set)) (cons x set))
;     (else (cons (car set) (adjoin-set x (cdr set))))))

(display-endline (element-of-set? 5 '(1 2 3 5 9)))
(display-endline (union-set '(3 5 7) '(1 3 4 7 9)))
