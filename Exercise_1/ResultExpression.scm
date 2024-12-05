(display "Exercise 1 - Structure and Interpretation of Computer Programs")
(newline)

(define pi 3.14159)
(display pi)
(newline)

(define (square x) (* x x))
(display (square 5))
(newline)

; Predicates and Expressions.
(define (abs x) (cond ((> x 0) x)
                        ((= x 0) 0)
                            ((< x 0) (- x))))

(display (abs -10))
(newline)

; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (max_square x y z)
(cond ((and (>= x y) (>= y z)) (+ (square x) (square y)))
        ((and (>= y x) (>= x z)) (+ (square y) (square x)))
        ((and (>= z x) (>= x y)) (+ (square z) (square x)))
        ((and (>= x z) (>= z y)) (+ (square x) (square z)))
        ((and (>= y z) (>= z x)) (+ (square y) (square z)))
        ((and (>= z y) (>= y x)) (+ (square z) (square y)))))

(display (max_square 1 2 3))
(newline)

(display "Compound Expressions")
(newline)
(define denominator (* 3 (- 6 2) (- 2 7)))
(define numerator (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))))
(define output (/ numerator denominator))

(display (exact->inexact output))
(newline)