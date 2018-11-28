;;iterative
(setf final-list '())
(setf final-list2 '())

(defun add-to-spot (l x y)
  (loop for elem in l do
    (if (eq elem x) 
      (progn 
         (push elem final-list)
         (push y final-list))
      (push elem final-list))
  )  
  (loop for elem in final-list do
    (push elem final-list2)))

(add-to-spot '(1 1 3) '1 '2)

(print final-list2)

;;recursive
(setf final-list '())
(setf final-list2 '())

(defun add-to-spot (l x y)
  (if (eq (car l) nil)
    (progn
      (loop for elem in final-list do
      (push elem final-list2)))
    (progn
      (if (eq (car l) x)
        (progn 
          (push (car l) final-list)
          (push y final-list)
          (add-to-spot (cdr l) x y)
        )
        (progn 
          (push (car l) final-list)
          (add-to-spot (cdr l) x y)
        )
      )
    )
  )
)

(add-to-spot '(1 1 3) '1 '2)

(print final-list2)