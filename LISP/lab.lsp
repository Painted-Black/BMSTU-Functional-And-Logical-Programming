'(Финляндия Германия Нидерланды Норвегия)
'(Хельсинки Берлин Амстердам Осло)

(defun create_list (lst1 lst2)
    (defun join (elem1 elem2)
        (cons elem1 (cons elem2 Nil))
    )
    (mapcar #'join lst1 lst2)
)

(create_list '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))

(defun create_pairs (lst1 lst2)
    (defun join (elem1 elem2)
        (cons elem1 elem2)
    )
    (mapcar #'join lst1 lst2)
)

(create_pairs '(Финляндия Германия Нидерланды Норвегия) '(Хельсинки Берлин Амстердам Осло))

(defun find_list_by_capital (lst capital)
    (defun check (elem)
        (cond ( (eql capital (car (last elem))) (car elem))
        )
    )
    (remove Nil (mapcar #'check lst))
)

(find_list_by_capital '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'Осло)

(defun find_list_by_country (lst country)
    (defun check (elem)
        (cond ( (eql country (car elem)) (car (last elem)))
        )
    )
    (remove Nil (mapcar #'check lst))
)

(find_list_by_country '((ФИНЛЯНДИЯ ХЕЛЬСИНКИ) (ГЕРМАНИЯ БЕРЛИН) (НИДЕРЛАНДЫ АМСТЕРДАМ) (НОРВЕГИЯ ОСЛО)) 'Осло)

(defun find_pairs_by_capital (lst capital)
    (defun check (elem)
        (cond ( (eql capital (cdr elem)) (car elem))
        )
    )
    (remove Nil (mapcar #'check lst))
)

(find_pairs_by_capital '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'Осло)

(defun find_pairs_by_country (lst capital)
    (defun check (elem)
        (cond ( (eql capital (car elem)) (cdr elem))
        )
    )
    (remove Nil (mapcar #'check lst))
)

(find_pairs_by_country '((ФИНЛЯНДИЯ . ХЕЛЬСИНКИ) (ГЕРМАНИЯ . БЕРЛИН) (НИДЕРЛАНДЫ . АМСТЕРДАМ) (НОРВЕГИЯ . ОСЛО)) 'Норвегия)



