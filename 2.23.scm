(define (for-each f xs) 
  (if (null? xs)
    ()
    (begin
      (f (car xs))
      (for-each f (cdr xs)))))

(for-each
  (lambda (x)
    (display x)
    (newline))
  (list 57 321 88))
