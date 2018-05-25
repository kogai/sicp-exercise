(define (make-monitored f)
  (let ((counter 0))
    (define how-many-calls? counter)
    (define (call p) (begin
        (set! counter (+ counter 1))
        (if (eq? p 'how-many-calls?)
          counter
          (f p))
    ))
    (define (dispatch p)
      (cond
        ((eq? p 'how-many-calls?) (how-many-calls?))
        (else (call p))))
    dispatch))

(define M sqrt)

(print (M 100))
; (prirt (M 8))
; (print (M 16))
(print (M 'how-many-calls?))
