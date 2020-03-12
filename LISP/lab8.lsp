(defun is_palindrome (lst)
    (equalp lst (reverse lst))
)

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

(defun swap-first-last (lst)
    (and (setf tmp (car lst))
        (setf (car lst) (car(last lst)))
        (setf (car (last lst)) tmp)
        lst
    )
)

(defun swap-first-last2 (lst)
    (cond ((null lst) lst)
          ((not (null lst)) 
            (and
                (setf tmp  (car lst))
                (rplaca lst (car (last lst)))
                (setf (car (last lst)) tmp)
                lst
            )
          )
    )
)

--------------------------------------------------------------------------------

(defun swap-two-element (lst el1 el2)
    (setf tmp (nth el1 lst))
    (rplaca (nthcdr el1 lst) (nth el2 lst))
    (rplaca (nthcdr el2 lst) tmp)
    lst
)


(defun swap-two-element2 (lst el1 el2)
    (cond ( (null lst) lst )
          ( (not (plusp (+ el1 1))) lst )
          ( (not (plusp (+ el2 1))) lst )
          ( (>= el1 (list-length lst)) lst )
          ( (>= el2 (list-length lst)) lst )
          (
            (setf tmp (nth el1 lst))
            (rplaca (nthcdr el1 lst) (nth el2 lst))
            (rplaca (nthcdr el2 lst) tmp)
            lst
          )
    )
)

--------------------------------------------------------------------------------

(defun shl2 (lst)
    (append (cdr lst) (cons (car lst) Nil))
)

(defun shl (lst)
    (cons (cdr lst) (cons (car lst) Nil))
)


(defun swap-to-left (lst k)
    (loop for x from 0 to (- k 1)
        do (setf lst (shl lst))
    )
    lst
)

(defun shr2 (lst)
    (append (last lst) (reverse (cdr (reverse lst))))
)

(defun shr (lst)
    (cons (car (last lst)) (reverse (cdr (reverse lst))))
)

(defun swap-to-right (lst k)
    (loop for x from 0 to (- k 1)
        do (setf lst (shr lst))
    )
    lst
)

--------------------------------------------------------------------------------
(defun mult (lst num)
    (defun m (n)
        (* n num)
    )
    (mapcar #'m lst)
)

(defun mult2 (lst num)
    (defun m (n)
        (cond ( (numberp n) (* n num) )
              (n)
        )
    )
    (mapcar #'m lst)
)

--------------------------------------------------------------------------------

(defun select-between (lst min max)
    (defun check (n)
        (cond ( ( and (<= n max) (>= n min) ) n)
              (Nil) 
        )
    )
    (remove Nil (mapcar #'check lst))
)

--------------------------------------------------------------------------------








