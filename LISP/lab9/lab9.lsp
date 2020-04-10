(defun set-equal (set1 set2)
    (if (equal (car set1))  )
)

(defun first_а (lst)
	(cond	( (atom lst) lst )
			( t (first_а (car lst)) )
))

--------------------------------------------------------------------------------

(defun set_equal (set1 set2)
    (if (= (length(union set1 set2)) (length set1) (length set2)) T Nil
    )
)

(defun set_equal2 (set1 set2)
    (if (and (null (set-difference set1 set2)) (null (set-difference set2 set1)))  T Nil
    )
)

--------------------------------------------------------------------------------

(defun my_member (el lst)
	(cond 
	    ( (and (null lst) (eql el Nil)) t)
	    ( (null lst) nil )
		( (equal el (car lst)) t )
		( t (my_member el (cdr lst)) )
	)
)

(defun set-equal (set1 set2)
    (cond ( (and (check-set set1 set2) (check-set set2 set1) ) t)
    )
)

(defun check-set (set1 set2)
    (cond
        ( (null set1) t)
        ( (my_member (car set1) set2) (check-set (cdr set1 ) set2) )
        ( t Nil )
    )
)

(defun my_member (el lst)
	(cond 
	    ( (null lst) nil )
		( (equal el (car lst)) t )
		( t (my_member el (cdr lst)) )
	)
)


;(defun set-equal (set1 set2)
;    (cond
;        ( (null set1) t)
;        ( (my_member (car set1) set2) (set-equal (cdr set1 ) set2) )
;        ( t Nil )
;    )
;)

--------------------------------------------------------------------------------

'(ФИНЛЯНДИЯ ГЕРМАНИЯ)
'(ХЕЛЬСИНКИ БЕРЛИН)

(defun create-list (lst1 lst2)
    (cond ( (or (null lst1) (null lst2)) Nil)
          ( t (cons (cons (car lst1) (cons (car lst2) Nil)) (create-list (cdr lst1) (cdr lst2) )) )
    )
)

(defun create-list2 (lst1 lst2 base)
    (cond ( (or (null lst1) (null lst2)) base)
          ( t (create-list2 (cdr lst1) (cdr lst2) (cons (cons (car lst1) (cons (car lst2) Nil)) base)))
    )
)

(create-list '(ФИНЛЯНДИЯ ГЕРМАНИЯ) '(ХЕЛЬСИНКИ БЕРЛИН))
(create-list2 '(ФИНЛЯНДИЯ ГЕРМАНИЯ) '(ХЕЛЬСИНКИ БЕРЛИН) ())

(defun create-pair (lst1 lst2)
    (cond ( (or (null lst1) (null lst2)) Nil)
          ( t (cons (cons (car lst1) (car lst2)) (create-pair (cdr lst1) (cdr lst2) )) )
    )
)

(defun create-pair2 (lst1 lst2 base)
    (cond ( (or (null lst1) (null lst2)) base)
          ( t (create-pair2 (cdr lst2) (cdr lst1) (cons (cons (car lst1) (car lst2)) base)) )
    )
)

(create-pair '(ФИНЛЯНДИЯ ГЕРМАНИЯ РОССИЯ) '(ХЕЛЬСИНКИ БЕРЛИН МОСКВА))
(create-pair2 '(ФИНЛЯНДИЯ ГЕРМАНИЯ РОССИЯ) '(ХЕЛЬСИНКИ БЕРЛИН МОСКВА) ())

(defun find_by_capital (table capital)
    (cond ( (null table) 'unknown)
          ( (eql (cdr(car table)) capital) (car (car table)) )
          ( t (find_by_capital (cdr table) capital) )
    )
)

(find_by_capital '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (РОССИЯ . МОСКВА)) 'ХЕЛЬСИНКИ)

(defun find_by_country (table country)
    (cond ( (null table) 'unknown)
          ( (eql (car(car table)) country) (cdr (car table)) )
          ( t (find_by_country (cdr table) country) )
    )
)

(find_by_country '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (РОССИЯ . МОСКВА)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun first_not_empty_list (lst)
    (cond
        ( (null lst) 'not-found)
        ( (and (listp (car lst)) ( not (null (car lst) ) ) ) (car lst))
        ( t (first_not_empty_list (cdr lst)) )
    )
)

(first_not_empty_list '(a b))

--------------------------------------------------------------------------------

(defun chose_between (lst min max)
    (mapcan #'(lambda (elem)
                    (cond ( (and (<= elem max) (>= elem min)) (list elem))
                    )
              )
              lst
    )
)

(defun chose_between2 (lst min max)

    (remove Nil (mapcar #'( lambda (elem)
                            (cond ( (and (<= elem max) (>= elem min)) elem)
                            )
                          )
                          lst
                )
    )
)

(defun chose_between3 (lst min max)
    (mapcan #'(lambda (elem)
                    (cond ( (and (numberp elem) (<= elem max) (>= elem min)) (list elem))
                    )
              )
              lst
    )
)

(defun chose_between4 (lst min max)
    (defun check (elem)
        (cond
            ( (listp elem) (list (mapcan #'check elem)))
            ( (and (numberp elem) (<= elem max) (>= elem min)) (list elem))
        )
    )
    (remove Nil (mapcan #'check lst))
)

(chose_between4 '(0 1 2 3 9 12) 1 10)

--------------------------------------------------------------------------------

(defun decart (X Y)
	(mapcan #'
		(lambda (x)
			(mapcar #'
				(lambda (y) 
				    (list x y)
				)
				Y
			)
		)
		X
	)
)

(decart '(1 2) '(3 4))

(defun decart2 (x y)
    (mapcar #'(lambda (set1)
                    (cond
                        ( (null y) Nil)
                        ( t (cons (list (car set1) (car y)) (dec set1 (cdr y)) ))
                    )
              )
        x
    )
)

(decart2 '(1 2) '(3 4))

--------------------------------------------------------------------------------

(reduce #'+ ())

--------------------------------------------------------------------------------






























