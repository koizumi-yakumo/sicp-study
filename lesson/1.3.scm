;
; SICP 1.3
;

(define (square x) (* x x))

(define (sum-of-squares x y)
        (+ (square x) (square y)))

(define (sum-of-squares-big-two-num x y z)
        (if (>= x y) 
            (if (>= y z) (sum-of-squares x y) (sum-of-squares x z))
            (if (>= x z) (sum-of-squares x y) (sum-of-squares y z))
        )
)

(sum-of-squares-big-two-num 1 2 3)
; 13

(sum-of-squares-big-two-num 2 1 3) 
; 13

(sum-of-squares-big-two-num 3 1 2) 
; 13

(sum-of-squares-big-two-num 3 3 4) 
; 25

(sum-of-squares-big-two-num 3 4 3) 
; 25

(sum-of-squares-big-two-num 4 3 3) 
; 25 

(sum-of-squares-big-two-num 3 3 3) 
; 18

