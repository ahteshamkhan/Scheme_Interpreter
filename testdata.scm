;;;; SIMPLE TEST DATE FOR RUNNING INTERPRETER

(define (equalto2 exp) 
  (if (eq? 2 exp) true false))

(define (equalto1 exp) 
  (cond ((eq? 1 exp) true)
	(else false)))

(equalto1 4)
(equalto2 2)

(define list1 '(1 2 3))
(define list2 '(a b c))
(car list1)
(cdr list2)
(cons list1 list2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

486

(+ 137 349)
(- 1000 334)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define size 2)
size
(* 5 size)

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius))
circumference

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (square x) (* x x))

(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; PASCAL'S TRIANGLE
(define (pascal row col)
   (cond ((< row col) false)
	 ((= col 0) false)
         ((= 1 col) 1)
	 ((= row col) 1)
         (true (+ (pascal (- row 1) col)
                  (pascal (- row 1) (- col 1))))))

(pascal 4 3)  ;; should produce 3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define balance 100)

(define (withdraw amount)
  (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))


(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds")))

(withdraw 25)
(define W1 (make-withdraw 100))
(define W2 (make-withdraw 100))
(W2 40)
(W1 40)