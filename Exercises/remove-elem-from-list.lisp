;;iterative
(setf final-list '())
(setf final-list2 '())

(defun remove-kebab (l y)
  (loop for x in l do
    (if (not (eq x y))
      (push x final-list)))
  (loop for x in final-list do
      (push x final-list2)))

(remove-kebab '(1 2 3 4 4 5 6) 4)

(print final-list2)

;;recursive
(setf final-list '())
(setf final-list2 '())

(defun remove-kebab (l y)
  (if (not (null  l)) 
    (if (eq (car l) y)
      (remove-kebab (cdr l) y)
      (progn 
        (push (car l) final-list)
        (remove-kebab (cdr l) y)))
    (reverte-lista final-list)))

(defun reverte-lista (l)
  (loop for x in l do
      (push x final-list2)))

(remove-kebab '(1 2 3 4 4 5 6) 4)

(print final-list2)