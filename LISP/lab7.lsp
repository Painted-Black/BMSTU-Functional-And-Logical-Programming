(setf lst1 '(a b))
(setf lst2 '(c d))

(cons lst1 lst2) = ((A B) C D)
(list lst1 lst2) = ((A B) (C D))
(append lst1 lst2) = (A B C D)

--------------------------------------------------------------------------------

(reverse ()) = Nil
(last ()) = Nil
(reverse '(a)) = (A)
(last '(a)) = (A)
(reverse '((a b c))) = ((A B C))
(last '((a b c))) = ((A B C))

--------------------------------------------------------------------------------

(defun my_last (l)
    (car (reverse l))
)

(defun my_last2 (l)
    (nth (if (< (list-length l) 0) 0 (- (list-length l) 1)) l)
)

(my_last '(1 2 3))
(my_last '(1))
(my_last Nil)

--------------------------------------------------------------------------------

(defun my_tail (l)
    (reverse (cdr (reverse l)))
)

(defun my_tail2 (l)
    (nthcdr 1 (reverse l))
)

(my_tail '(1 2 3))
(my_tail '(1))
(my_tail Nil)

--------------------------------------------------------------------------------

(defun second_player (t1)
    (print "Ходит второй игрок)"
    (loop
        (setf c1 (+ (random 6) 1))
        (setf c2 (+ (random 6) 1))
        (print `(Очки ,c1 ,c2))
        (if (or (= (+ c1 c2) 7) (= (+ c1 c2) 11)) 
            (return `(Второй игрок выиграл со счетом ,(+ c1 c2) ))
            (if (or (and (= c1 1) (= c2 1) ) (and (= c1 6) (= c2 6)))
                (print "Второй игрок перебрасывает")
                (return
                    (and (cond ((> t1 (+ c1 c2)) `(Первый игрок выиграл со счетом ,t1))
                               ((< t1 (+ c1 c2)) `(Второй игрок выиграл со счетом ,(+ c1 c2)))
                               ((= t1 (+ c1 c2)) `(Ничья со счетом `t1))
                         )
                    )
                )
            )
        )
    )
)

(defun my_game ()
    (print "Ходит первый игрок")
    (loop
        (setf c1 (+ (random 6) 1))
        (setf c2 (+ (random 6) 1))
        (print `(Очки ,c1 ,c2))
        (if (or (= (+ c1 c2) 7) (= (+ c1 c2) 11)) 
            (and (print `(Первый игрок выиграл со счетом ,(+ c1 c2) )) (return))
            (if (or (and (= c1 1) (= c2 1) ) (and (= c1 6) (= c2 6)))
                (print "Первый игрок перебрасывает")
                (and (print (second_player (+ c1 c2))) (return)
                )
            )
        )
    )
)

--------------------------------------------------------------------------------

(defun random_number ()
    (list (+ (random 6) 1) (+ (random 6) 1))
)

(defun print_info (n player)
    (terpri)
    (princ  "Игрок №")
    (princ n)
    (print player)
    (terpri)
)

(defun out (lst)
    (cond ((equal lst '(6 6)) T)
          ((equal lst '(1 1)) T)
    )
)

(defun play (n)
    (setf player (random_number))
    (print_info n player)
    (do
        ()
        ((not (out player)))
        (setf player (random_number))
        (print_info n player)
    )
    player
)

(defun abs_winner (player)
    (cond ((= (+ (car player) (car (last player))) 11) T)
          ((= (+ (car player) (car (last player))) 7) T)
    )
)

(defun total_score (player)
    (+ (car player) (car (last player)))
)

(defun my_game2 ()
    (print "Ходит первый игрок")
    (setf player1 (play 1))
    
    (cond
        ( (abs_winner player1) (print "Первый игрок выиграл абсолютно.") )
        ( (print "Ходит второй игрок")
          (setf player2 (play 2)) 
          (cond ( (abs_winner player2) (print "Второй игрок выиграл абсолютно."))
                ( ( cond
                        ( (= (total_score player1) (total_score player2)) (print "Ничья"))
                        ( (> (total_score player1) (total_score player2)) (print "Выиграл первый игрок"))
                        ( (< (total_score player1) (total_score player2)) (print "Выиграл второй игрок"))
                ) )
          )
        )
    )
    "Конец игры"
)

