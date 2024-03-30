(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15 (done by ben)
;; Returns a list of two-element lists
(define (enumerate s)
(define (enumerate-helper lst index)
  (if (null? lst)
      '()
      (cons (list index (car lst))
            (enumerate-helper (cdr lst) (+ index 1)))))
(enumerate-helper s 0))

  ; END PROBLEM 15

;; Problem 16 (done by glenn benedict)

;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge inorder? list1 list2)
  ; BEGIN PROBLEM 16
  (cond
      ((eq? list1 nil) list2)
      ((eq? list2 nil) list1)
      ((inorder? (car list1) (car list2))
                 (cons 
                       (car list1)
                       (merge inorder? (cdr list1) list2)))
      (else 
            (cons
                (car list2)
                (merge inorder? list1 (cdr list2))))    
        )
  )
  ; END PROBLEM 16

;; Optional Problem 2

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((quoted? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        (else
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )))

; Some utility functions that you may find useful to implement for let-to-lambda

(define (zip pairs)
  'replace-this-line)
