;; a2
;; <add a description here>

;;Question 1
(define-read-only (is-leap (year uint))
    
   (if ( is-eq (mod year u400) u0) ;;|| 
      true
      (if (is-eq (mod year u100) u0) ;;&&
         false
          (if (is-eq (mod year u4) u0)
             true
             false
          ) 
      )
   ) 
)

;;Question 2
(define-read-only (no-leap (year1 uint) (year2 uint)) 
    (- (+ (- (/ year2 u4) (/ year2 u100)) (/ year2 u400) ) (+ (- (/ (- year1 u1) u4) (/ (- year1 u1) u100)) (/ (- year1 u1) u400) ) )
)

;;Question 3
(define-read-only (get-date (time-stamp uint) )
  {Hours: (mod (/ time-stamp u3600) u24), Minutes: (/ (mod time-stamp u3600) u60), Seconds: (mod time-stamp u60)} 
)

;;Question 4
(define-read-only (get-missing (numbers (list 10 uint))) 
   (- u55 (fold + numbers u0))
)