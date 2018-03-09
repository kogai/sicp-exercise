(import 2.54)

(define (display_endline x)
  (begin
    (display x)
    (display "\n")))
    
(display_endline (car ''abc))
