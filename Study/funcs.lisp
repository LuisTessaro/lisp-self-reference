(print "A and B")

;;leitura
(setq a (read))
(setq b (read))

(defun sum (a b)
  (print (+ a b))
)

(sum a b)

;; simple func
(defun getAvg(a b)
  (/ (+ a b) 2)
)

;; parametros opcional depois do &optional
(defun printList(w x &optional y z)
  (print (list w x y z))
)

(print (getAvg 10 50))

(printList 1 2)


(defvar total 0)

;; return e iteração em lista
(defun sum-of-all-elems (nums)
  (dolist (num nums)
    (setf total (+ total num))
  )
  total
)

(print (sum-of-all-elems '(50 80 90 8 9 1)))

;; função com mais de um retorno
(defun squares (num)
  (values (expt num 2) (expt num 3))
)

(multiple-value-bind (a b) (squares 2)
  (print (list a b))
)

;; map
(setq a '())

(mapcar (lambda (x) (push (+ x 2) a)) '(1 2 3 4))

(print a)

(print (cons 'a '(b c)))


;; if ternário
(defun greater-of-two (a b)
  (if (> a b) a b))

(print (greater-of-two 35 2))



;; exemplos de funções

(defun iterative-dots (z)
  (if (not (> z 0))
    (print "negative number")
  )
  (loop for x from 1 to z
  do (print ".")))

(iterative-dots 5)

(setq z 0)

(defun recursive-dots (z max)
  (if (not (= z max))
    (progn
      (print ".")
      (recursive-dots (+ z 1) max)
    )
  )
)

(recursive-dots 0 25)

(defun symbol-amount-rec (l elem c)  
  (if (null  l) c
    (if (eq (car l) elem)  
      (symbol-amount (cdr l) elem (+ c 1))
      (symbol-amount (cdr l) elem c))))

(print (symbol-amount-rec '(3 4 3 4 3) 3 0))


(defun symbol-amount-itera (list element)
  (loop for value in list count (eq value element) ))

(print(symbol-amount-itera '(3 4 3 4 3) 3))