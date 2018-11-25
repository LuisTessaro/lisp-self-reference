;; (car '(luis mauricio felipe antonio thais)) primeiro elemento
;; (cdr '(luis mauricio felipe antonio thais)) tudo depois do primeiro elemento

(setq lista '(luis mauricio felipe antonio thais))

(print (cadddr lista)) ; = antonio
;; só funciona até 4 d's e a's, por algum motivo
;; sempre da direita para a esquerda um D vai tirar o primeiro elemento e um A vai pegar aquele elemento
;; i.e: d¹ tira o luis d² tira o mauricio d³ tira a thais

;; é lista?
(print lista)
(print (listp lista))

;; é membro
(print lista)
(if (member 'luis lista)
  (print "e membro")
  (print "não e mmebro")
)

;; append
(setq limao (append '(ayy) '(li) '(mao)))
(print limao)

;push
(setq lima '(li mao))
(print lima)
(push 'ayy lima)
(print lima)

;; o³ item
(print (nth 2 lima))

;; insere a no head de (b c)
(print (cons 'a '(b c)))
