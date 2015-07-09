;
; 1.7 x が小さい時
;

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
            x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; (sqrt 0.1)
; this:   0.316245562280389
; google: 0.31622776601

; (sqrt 0.001)
; this:   0.04124542607499115
; google: 0.0316227766

; guess が (sqrt 0.001) [評価値の平方根]より小さくなるケースで、結果の差がでかくなる

