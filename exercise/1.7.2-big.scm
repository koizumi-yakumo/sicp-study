;
; 1.7 x が大きい時
;

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (display (- (square guess) x))
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
            x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

; (sqrt 10000000000000)
; 処理終わらず
; square guess が大きくなると guess^2 - x の値が一定になるため無限ループ

