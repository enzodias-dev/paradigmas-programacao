(defstruct criatura nome bioma profundidade perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a | bioma: ~a | profundidade: ~a m | perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list (make-criatura :nome "Peeper" :bioma "Safe Shallows" :profundidade 10 :perigo :inofensiva)
        (make-criatura :nome "Bonecrusher" :bioma "Floresta de Algas" :profundidade 120 :perigo :agressiva)
        (make-criatura :nome "Reaper Leviathan" :bioma "Planicie de Dunas" :profundidade 250 :perigo :leviata)
        (make-criatura :nome "Ghost Leviathan" :bioma "Regiao Perdida" :profundidade 600 :perigo :leviata)
        (make-criatura :nome "Boomerang" :bioma "Recife" :profundidade 40 :perigo :inofensiva)))

(defun main ()
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (format t "~%Criaturas abaixo de 100 m:~%")
  (let ((fundas (abaixo-de 100 *catalogo*)))
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "Quantidade: ~a~%" (length fundas))))

(main)
