;; > <  >= <= =

(setf age (read))

;; maior
(if (> age 18)
  (print "you can vote")
  (print "you cant vote")
)

;; maior negado
(if (not (> age 18))
  (print "you can vote")
  (print "you cant vote")
)

;; and / or
(if (and (> age 17) (< age  70))
  (print "you can vote")
  (print "you cant vote")
)

;; se quiser mais de uma coisa no then ou else ou em qualquer lugar que só uma operação seria permitida
(if (and (> age 17) (< age  70))
  (progn
    ;; coisas aqui  
    (print "you can vote")
    (print " but you are old")
    (print age)
  )
  (print "you cant vote")
)

;; switch case
(defun school (age)
  (case age
    (5 (print "Novo"))
    (6 (print "Novo"))
    (7 (print "Novo"))
    (8 (print "Novo"))
    (55 (print "velho"))
    (80 (print "velho"))
    (90 (print "velho"))
    (45 (print "meh"))
    (otherwise (print "troxa")) ;; then
  )
)
;; chamando
(school age)

(cond 
  ( ; if
    (> age 20)
    (format t "~% age is greater than 20")
  )

  ( ; else if
    (> age 15)
    (format t "~% age is greater than 15")
  )

  ( ; else
    t 
    (format t "~% value of age is ~d " age)
  )
)
