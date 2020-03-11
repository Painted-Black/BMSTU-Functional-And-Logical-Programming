(defun mycompare3 (a b c)
(if (<= a c) (if (>= a b) T Nil) (if (<= a b) (if (>= a c) T Nil) Nil)))

--------------------------------------------------------------------------------

(defun mycompare2 (a b c)
(or (and (<= a c) (>= a b)) (and (<= a b) (>= a c))))

--------------------------------------------------------------------------------

(defun isGreater (a b)
(>= a b))

--------------------------------------------------------------------------------

(defun mycompare (a b c)
(if (or (and (<= a c) (>= a b)) (and (<= a b) (>= a c))) T Nil))

--------------------------------------------------------------------------------

(defun list2 (a b)
(if (< a b) (cons a (cons b ())) (cons b (cons a ()))))

--------------------------------------------------------------------------------

(defun mod_more (x)
(if (< x 0) (- x 1) (+ x 1)))

--------------------------------------------------------------------------------

(defun even-num (x)
(if (= (rem (+ x 1) 2) 1) (+ x 2) (+ x 1)))

--------------------------------------------------------------------------------

(defun mycompare4 (a b c)
    (cond
        ((>= a b)
            (cond
                ((>= c a) T)))
        ((<= a b)
            (cond
                ((<= c a) T))))
)

--------------------------------------------------------------------------------

(defun how_alike (x y)
    (cond ((or (= x y)(equal x y)) 'the_same)
          ((and (oddp x)(oddp y)) 'both_odd)
          ((and (evenp x)(evenp y)) 'both_even)
           (t 'difference)))
        
--------------------------------------------------------------------------------   

(defun how_alike2 (x y)
    ( or (or (and (= x y) 'the_same) (and (equal x y) 'the_same))
         (and (oddp x) (oddp y) 'both_odd)
         (and (evenp x) (evenp y) 'both_even)
         'difference
    )
)

--------------------------------------------------------------------------------

(defun how_alike3 (x y)
    (if (oddp x) (
        if (oddp y) 'both_odd)
        (if (evenp x) (
            if (evenp y) 'both_even))
    )
    (if (= x y) 'the_same
        (if (equal x y) 'the_same)
    )
    'difference
)

--------------------------------------------------------------------------------

(defun how_alike3 (x y)
    (if (= x y) 'the_same
        (if (equal x y) 'the_same
            (if (oddp x)
                (if (oddp y) 'both_odd 'difference
                )
                (if (evenp x)
                    (if (evenp y) 'both_even 'difference)
                )
            )
        )
    )
)

--------------------------------------------------------------------------------

'(Финляндия Германия Нидерланды Норвегия)
'(Хельсинки Берлин Амстердам Осло)


(defun create_list (lst1 lst2) 
    ( cons 
        ( cons (car lst1) (cons (car lst2) Nil) )  
        (cons ( cons (second lst1) (cons (second lst2) Nil )) 
            ( cons
                (cons (third lst1) (cons (third lst2) Nil))
                (cons (cons (fourth lst1) (cons (fourth lst2) Nil)) Nil)
            )
        )
    )
)

(create_list '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))

--------------------------------------------------------------------------------

(defun create_point_pair (lst1 lst2)
    ( cons 
        ( cons (car lst1) (car lst2) )
        (cons ( cons (second lst1) (second lst2)) 
            ( cons
                (cons (third lst1) (third lst2))
                (cons (cons (fourth lst1) (fourth lst2)) Nil)
            )
        )
    )
)

(create_point_pair '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))

--------------------------------------------------------------------------------

(defun search_list_by_contry1 (lst contry)
    (or
        (and (eql (car (car lst)) contry) (car (cdr (car lst)))
        )
        (and (eql (car (second lst)) contry) (car (cdr (second lst ) ) )
        )
        (and (eql (car (third lst)) contry) (car (cdr (third lst)))
        )
        (and (eql (car (fourth lst)) contry) (car (cdr (fourth lst)))
        )
        'Unknown
    ) 
)

(search_list_by_contry1 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Нидерланды)

--------------------------------------------------------------------------------

(defun search_list_by_capital1 (lst capital)
    (or
        (and (eql (car (cdr (car lst))) capital) (car (car lst))
        )
        (and (eql (car (cdr (second lst))) capital) (car (second lst))
        )
        (and (eql (car (cdr (third lst))) capital) (car (third lst))
        )
        (and (eql (car (cdr (fourth lst))) capital) (car (fourth lst))
        )
        'Unknown
    ) 
)

(search_list_by_capital1 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Хельсинки)

--------------------------------------------------------------------------------

(defun search_list_by_contry2 (lst contry)
    (if (eql (car (car lst)) contry) (car (cdr (car lst))) 
        (if (eql (car (second lst)) contry) (car (cdr (second lst ) ) )
            (if (eql (car (third lst)) contry) (car (cdr (third lst)))
                ( if (eql (car (fourth lst)) contry) (car (cdr (fourth lst))) 'Unknown
                )
            )
        )
    )
)

(search_list_by_contry2 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun search_list_by_capital2 (lst capital)
    (if (eql (car (cdr (car lst))) capital) (car (car lst)) 
        (if (eql (car (cdr (second lst))) capital) (car (second lst))
            (if (eql (car (cdr (third lst))) capital) (car (third lst))
                ( if (eql (car (cdr (fourth lst))) capital) (car (fourth lst)) 'Unknown
                )
            )
        )
    )
)

(search_list_by_capital2 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'осло)

--------------------------------------------------------------------------------

(defun search_list_by_contry3 (lst contry)
    (cond ((eql (car (car lst)) contry) (car (cdr (car lst))))
    ((eql (car (second lst)) contry) (car (cdr (second lst ) ) ))
    ((eql (car (third lst)) contry) (car (cdr (third lst))))
    ((eql (car (fourth lst)) contry) (car (cdr (fourth lst))))
    ('UNKNOWN)
    )
)

(search_list_by_contry3 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun search_list_by_capital3 (lst capital)
    (cond ((eql (car (cdr (car lst))) capital) (car (car lst)))
    ((eql (car (cdr (second lst))) capital) (car (second lst)))
    ((eql (car (cdr (third lst))) capital) (car (third lst)))
    ((eql (car (cdr (fourth lst))) capital) (car (fourth lst)))
    ('UNKNOWN)
    )
)

(search_list_by_capital3 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Хельсинки)

--------------------------------------------------------------------------------

(defun search_pairs_by_contry1 (lst contry)
    (or
        (and (eql (car (car lst)) contry) (cdr (car lst))
        )
        (and (eql (car (second lst)) contry) (cdr (second lst ) ) 
        )
        (and (eql (car (third lst)) contry) (cdr (third lst))
        )
        (and (eql (car (fourth lst)) contry) (cdr (fourth lst))
        )
        'Unknown
    ) 
)

(search_pairs_by_contry1 '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'Нидерланды)

--------------------------------------------------------------------------------

(defun search_pairs_by_capital1 (lst capital)
    (or
        (and (eql (car (cdr (car lst))) capital) (car (car lst))
        )
        (and (eql (car (cdr (second lst))) capital) (car (second lst))
        )
        (and (eql (car (cdr (third lst))) capital) (car (third lst))
        )
        (and (eql (car (cdr (fourth lst))) capital) (car (fourth lst))
        )
        'Unknown
    ) 
)

(search_pairs_by_capital1 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'ХЕЛЬСИНКИ)

--------------------------------------------------------------------------------

(defun search_pairs_by_contry2 (lst contry)
    (if (eql (car (car lst)) contry) (cdr (car lst))
        (if (eql (car (second lst)) contry) (cdr (second lst ) ) 
            (if (eql (car (third lst)) contry) (cdr (third lst))
                ( if (eql (car (fourth lst)) contry) (cdr (fourth lst)) 'Unknown
                )
            )
        )
    )
)

(search_pairs_by_contry2 '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun search_pairs_by_capital2 (lst capital)
    (if (eql (car (cdr (car lst))) capital) (car (car lst)) 
        (if (eql (car (cdr (second lst))) capital) (car (second lst))
            (if (eql (car (cdr (third lst))) capital) (car (third lst))
                ( if (eql (car (cdr (fourth lst))) capital) (car (fourth lst)) 'Unknown
                )
            )
        )
    )
)

(search_pairs_by_capital2 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun search_pairs_by_contry3 (lst contry)
    (cond ((eql (car (car lst)) contry) (cdr (car lst)))
    ((eql (car (second lst)) contry) (cdr (second lst ) ) )
    ((eql (car (third lst)) contry) (cdr (third lst)))
    ((eql (car (fourth lst)) contry) (cdr (fourth lst)))
    ('UNKNOWN)
    )
)

(search_pairs_by_contry3 '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'ФИНЛЯНДИЯ)

--------------------------------------------------------------------------------

(defun search_pairs_by_capital3 (lst capital)
    (cond ((eql (car (cdr (car lst))) capital) (car (car lst)))
    ((eql (car (cdr (second lst))) capital) (car (second lst)))
    ((eql (car (cdr (third lst))) capital) (car (third lst)))
    ((eql (car (cdr (fourth lst))) capital) (car (fourth lst)))
    ('UNKNOWN)
    )
)

(search_pairs_by_capital3 '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Хельсинки)

--------------------------------------------------------------------------------

(defun create_list (lst1 lst2)
    (if (null (cdr lst1))
        (cons (cons (car lst1) (cons (car lst2) Nil)) Nil)
        (cons 
            (cons (car lst1) (cons (car lst2) Nil)
            )
            (create_list (cdr lst1) (cdr lst2))
        )
    )
)

(create_list '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))


(defun create_point_pair (lst1 lst2)
    (if (null (cdr lst1))
        (cons (cons (car lst1) (car lst2)) Nil)
        (cons 
            (cons (car lst1) (car lst2))
            (create_point_pair (cdr lst1) (cdr lst2))
        )
    )
)

(create_point_pair '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))


'((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО))
'((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО))


(defun find_list_element_by_capital (lst capital)
    (if (null lst)
        'unknown
        (if (eql (car (cdr(car lst))) capital)
            (car (car lst))
            (find_list_element_by_capital (cdr lst) capital)
        )
    )
)

(find_list_element_by_capital '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Амстердам)

(defun find_pair_element_by_capital (lst capital)
    (if (null lst)
        'unknown
        (if (eql (cdr(car lst)) capital)
            (car (car lst))
            (find_pair_element_by_capital (cdr lst) capital)
        )
    )
)

(find_pair_element_by_capital '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'Амстердам)


(defun find_list_element_by_country (lst country)
    (if (null lst)
        'unknown
        (if (eql (car(car lst)) country)
            (car (cdr (car lst)))
            (find_list_element_by_country (cdr lst) country)
        )
    )
)

(defun find_pair_element_by_country (lst country)
    (if (null lst)
        'unknown
        (if (eql (car(car lst)) country)
            (cdr (car lst))
            (find_pair_element_by_country (cdr lst) country)
        )
    )
)







