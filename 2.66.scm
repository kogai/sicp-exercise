(define (display-endline x)
  (begin
    (display x)
    (display "\n")))

(define (left tree)
  (car (cdr tree)))

(define (right tree)
  (cdr (cdr tree)))

(define (lookup key tree)
  (cond ((null? tree) #f)
    ((= key (car tree)) (car tree))
    ((< key (car tree)) (lookup key (left tree)))
    ((> key (car tree)) (lookup key (right tree)))
    (else tree)
))

(display-endline (lookup 3 '(10
                              '(2 '() '(3 '() '()))
                              '(12 '() '())
                              )))
; (display-endline (right '(10
;                               '(2 '() '(3 '() '()))
;                               '(12 '() '())
;                               )))
