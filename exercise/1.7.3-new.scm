;
; 1.7 改良版
;

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess improved)
    (< (abs (- guess improved)) 0.001))

(define (sqrt-iter guess x)
    (define improved (improve guess x))
    (if (good-enough? guess improved)
            improved
            (sqrt-iter improved x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; (sqrt 10000000000000)
; this:   3162277.6601683795
; google: 3162277.66017

; (sqrt 0.001)
; this:   0.03162278245070105
; google: 0.0316227766

