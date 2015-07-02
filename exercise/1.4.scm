;
; SICP 1.4
;

(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -1)
; ((if (> b 0) + -) a b)
; ((if (> -1 0) + -) 1 -1) 
; ((if (#f) + -) 1 -1) 
; (- 1 -1)

(a-plus-abs-b 1 1)
; ((if (> b 0) + -) a b)
; ((if (> 1 0) + -) 1 1) 
; ((if (#t) + -) 1 -1) 
; (+ 1 1)

