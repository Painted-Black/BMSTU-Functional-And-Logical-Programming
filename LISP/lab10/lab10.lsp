(defun sum_length (lst)
    (reduce #'+ (mapcar #'(lambda (elem)
                            (if (listp elem) (sum_length elem) 1)
                          )
                          lst
                )
    )
)

(sum_length '(1 2))

--------------------------------------------------------------------------------

(defun rec_add (lst)
    (reduce #'ra lst)
)

(defun ra (elem next_elem)
    (cond ( (and (listp elem) (listp next_elem)) ( + (rec_add elem) (rec_add next_elem)) )
          ( (and (listp elem) (not (listp next_elem))) (+ (rec_add elem) next_elem))
          ( (and (not (listp elem)) (listp next_elem)) (+ elem (rec_add next_elem)))
          ( t (+ elem next_elem) )
    )
)

(rec_add '(1 2))

--------------------------------------------------------------------------------

(defun rec_nth (count lst)
    (cond
        ( (or (not (integerp count)) (<= count 0)) `(,count не является положительным целым числом) )
        ( (= count 1) (car lst) ) 
        ( t (rec_nth (- count 1) (cdr lst)) )
    )
)

(rec_nth 1 '(1 2))

(defun rec_nth2 (count lst)
    (cond
        ( (or (not (integerp count)) (<= count 0)) `(,count не является положительным целым числом) )
        ( t (rec_nth_inner 1 count lst) )
    )
)

(rec_nth2 1 '(1 2))

--------------------------------------------------------------------------------

(defun alloddr (lst)
    (cond
        ( (null lst) t)
        ( t (and (numberp (car lst)) (oddp (car lst)) (alloddr (cdr lst))) )
    )
)

(alloddr '(1 2))

(defun alloddr2 (lst)
    (cond
        ( (null lst) Nil)
        ( (not (listp lst)) '(Аргумент не является списком))
        ( t (alloddr_inner lst) )
    )
)

(defun alloddr_inner (lst)
    (cond
        ( (null lst) t)
        ( t (and (numberp (car lst)) (oddp (car lst)) (alloddr (cdr lst))) )
    )
)

(alloddr2 '(1 2))

(defun alloddr3 (lst)
    (cond
        ( (null lst) t)
        ( (listp (car lst)) (and (alloddr3 (car lst)) (alloddr3 (cdr lst))) )
        ( t (and (numberp (car lst)) (oddp (car lst)) (alloddr3 (cdr lst))) )
    )
)

(alloddr3 '(1 (3)))

--------------------------------------------------------------------------------

(defun rec_get_last (lst)
    (cond
        ( (null (cdr lst)) (car lst))
        ( t (rec_get_last (cdr lst)) )
    )
)

(rec_get_last '(1 2 3 4))

--------------------------------------------------------------------------------

(defun sum_n_inner (start n)
    (cond
        ( (= n start) start)
        (t (+ n (sum_n_inner start (- n 1))))
    )
)

(defun sum_n (n)
    (sum_n_inner 0 n)
)

(sum_n_inner 0 4)
(sum_n 4)

(defun sum_n2_inner (n m d)
    (cond
        ( (> (+ n d) m) n)
        (t (+ n (sum_n2 (+ n d) m d)))
    )
)

(defun sum_n2 (n m d)
    (cond
        ( (<= d 0) `(,d не является положительным числом) )
        ( t (sum_n2_inner n m d) )
    )
)

(sum_n2_inner 0 4 1)
(sum_n2 0 4 1)

--------------------------------------------------------------------------------

(defun get_last (lst)
    (get_last_inner (reverse lst))
)

(defun get_last_inner (lst)
    (cond
        ( (null lst) Nil)
        ( (oddp (car lst)) (car lst))
        ( t (get_last_inner (cdr lst)) )
    )
)

(get_last '(1 2 3))

(defun get_last_inner2 (cur val)
    (cond
        ( (eql cur Nil) val )
        ( (oddp (car cur)) (get_last_inner2 (cdr cur) (car cur)) )
        ( t (get_last_inner2 (cdr cur) val) )
    )
)

(defun get_last2 (lst)
    (get_last_inner2 lst Nil)
)

(get_last2 '(1 2 3))

--------------------------------------------------------------------------------

(defun squares (lst)
    (cond
        ( (null lst) Nil)
        ( t (cons (* (car lst) (car lst)) (squares (cdr lst))) )
    )
)

(squares '(1 5))

--------------------------------------------------------------------------------

(defun select_odd (lst)
    (mapcan #'(lambda (elem)
                (if (oddp elem) (list elem))
              )
              lst
    )
)

(select_odd '(1 2 3 4))


(defun select_odd2_inner (elem)
    (cond
        ( (listp elem) (list (mapcan #'select_odd2_inner elem)) )
        ( (and (numberp elem) (oddp elem)) (list elem) )
    )
)

(defun select_odd2 (lst)
    (remove Nil (mapcan #'select_odd2_inner lst))
)

(select_odd2 '(1 2 (3 6) 4))


(defun select_odd3_inner (lst res)
    (mapcar #'(lambda (elem)
               (cond
                    ( (listp elem) (select_odd3_inner elem res))
                    ( (and (numberp elem) (oddp elem)) (nconc res (cons elem Nil)))
               )
              )
              lst
    )
    (cdr res)
)

(defun select_odd3 (lst)
    (select_odd3_inner lst (cons Nil Nil))
)

(select_odd3 '(1 2 3 6 4))

(defun select_odd4_innner (lst)
    (cond
        ( (null lst) Nil)
        ( (and (numberp (car lst)) (oddp (car lst))) (cons (car lst) (select_odd4 (cdr lst)) ) )
        ( t (cons Nil (select_odd4 (cdr lst))) )
    )
)

(defun select_odd4_innner (lst)
    (cond
        ( (null lst) Nil)
        ( (listp (car lst)) (cons (select_odd4 (car lst)) (select_odd4 (cdr lst))) )
        ( (and (numberp (car lst)) (oddp (car lst))) (cons (car lst) (select_odd4 (cdr lst)) ) )
        ( t (cons Nil (select_odd4 (cdr lst))) )
    )
)

(defun select_odd4 (lst)
    (remove Nil (select_odd4_innner lst))
)

(select_odd4 '(1 2 3 6 4))






