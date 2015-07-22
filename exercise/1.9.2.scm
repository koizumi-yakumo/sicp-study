(define (inc x)
    (- x -1))

(define (dec x)
    (- x 1))

(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))


;(+ 4 5)
;(+ (dec 4) (inc 5))
;(+ 3 6)
;(+ (dec 3) (inc 6))
;(+ 2 7)
;(+ (dec 2) (inc 7))
;(+ 1 8)
;(+ (dec 1) (inc 9))
;(+ 0 9)
;(9)
;
;反復的

