(defstruct erva nome preco-por-grama toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$ ~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Aviso: Maomao vai testar esta erva em si mesma antes."
      "Liberada para o paciente."))

(defun main ()
  (let ((ervas (list (make-erva :nome "Camomila" :preco-por-grama 1.5 :toxicidade 1)
                     (make-erva :nome "Aconito" :preco-por-grama 4.75 :toxicidade 5)
                     (make-erva :nome "Cicuta" :preco-por-grama 9.9 :toxicidade 9))))
    (dolist (e ervas)
      (format t "~a~%~a~%~%" (descreve-erva e) (aviso e)))
    (format t "Preco de uma dose de 10g de ~a: R$ ~,2f~%"
            (erva-nome (second ervas))
            (preco-da-dose (second ervas) 10))))

(main)
