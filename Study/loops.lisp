;; for
(loop for x from 1 to 10
  do (print x)
)

(setq x 1)

;; while
(loop
  (print x)
  (setq x (+ x 1))
  (when (> x 10) (return x))
)

;; for each
(loop for x in '(luis mauricio felipe) do
  (print x)
)
