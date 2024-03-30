; Recursive
(define (f n) 
    (cond ((< n 3) n)
        (else (+ (f (- n 1))
                    (* 2 (f (- n 2)))
                    (* 3 (f (- n 3)))))))

(f 3)

; Iterative
; a <- (a + 2b + 3c)
; b <- a
; c <- b

(define (f n)
    (define (f-iter a b c count)
        (if (= count 0)
        a
        (iter b c (* 2 b) (* 3 a) (- count 1))
    (f-iter 0 1 2 n))))

(f 3)