;
; SICP 1.5
;

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

;;; 作用的順序
(test 0 (p)) ; 無限ループ
; (test 0 (p))
; ... 


;;; 正規順序
(test 0 (p)) ; 0
; ((if (= x 0) 0 y)
; ((if (#t) 0 (p)) 
; 0

