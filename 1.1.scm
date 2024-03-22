(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

; Applicative order
; The interpreter first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments

; (f 5)

; Retrieve the body of f
; (sum-of-squares (+ a 1) (* a 2))

; Replace the formal parameter a by the argument 5
; (sum-of-squares (+ 5 1) (* 5 2))

; Evaluate the operator to get the procedure to be applied
; Evaluate the operands to get the arguments
; (+ (square 6) (square 10))

; (+ (* 6 6) (* 10 10))

; (+ 36 100)

; 136

; Normal order
; First substitute operand expressions for parameters until it obtained an expression involving only primitive operators, then perform the evaluation

; (f 5)

; (sum-of-squares (+ 5 1) (* 5 2))

; (+ (square (+ 5 1)) 
;    (square (* 5 2)))

; (+ (* (+ 5 1) (+ 5 1)) 
;    (* (* 5 2) (* 5 2)))

; (+ (* 6 6) 
;    (* 10 10))

; (+ 36 100)

; 136
