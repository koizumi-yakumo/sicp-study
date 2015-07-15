;
; 1.8 立方根 (cube roots)
;
(define (good-enough? guess improved)
    (< (abs (- guess improved)) 0.001))

(define (improve-cube guess x)
    (/ (+  (/ x (square guess))
           (* 2 guess))
       3))

(define (cube-iter guess x)
    (define improved (improve-cube guess x))
    (if (good-enough? guess improved)
        improved
        (cube-iter improved x)))

(define (cube x)
    (cube-iter 1.0 x))

; (cube 2)
;Value: 1.2599210500177698

; (cube 3)
;Value: 1.4422497895989996

; (cube 9)
;Value: 2.0800838232385224

