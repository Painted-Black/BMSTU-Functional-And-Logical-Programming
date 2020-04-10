(defun my_length (lst)
    (reduce #'+ (mapcar #'(lambda (elem)
                            1
                          )
                          lst
                )
    )
)

(my_length '(1 2 3 5))

(defun x (a)
    (* a 2)
)

(setq x '+)

(apply #'x '(funcall x 2 1)) ; error

(apply #'x '(funcall x 2 1))
