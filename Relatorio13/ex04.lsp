(defstruct dominio nome elemento dificuldade mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not
                     (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                     lista))
         (textos (mapcar
                  (lambda (d)
                    (format nil "~a - recompensa final: ~a mora"
                            (dominio-nome d) (recompensa-final d)))
                  possiveis)))
    textos))

(defun main ()
  (let ((dominios (list (make-dominio :nome "Cinzas Esquecidas" :elemento :pyro :dificuldade 2 :mora 20000)
                        (make-dominio :nome "Santuario Submerso" :elemento :hydro :dificuldade 3 :mora 30000)
                        (make-dominio :nome "Gelo Eterno" :elemento :cryo :dificuldade 4 :mora 40000)
                        (make-dominio :nome "Trovao Distante" :elemento :electro :dificuldade 5 :mora 50000)
                        (make-dominio :nome "Brisa Antiga" :elemento :anemo :dificuldade 1 :mora 10000))))
    (format t "Rota ate dificuldade 3:~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))
    (format t "Total de mora da lista: ~a~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))
    (let ((copia (copy-dominio (first dominios))))
      (setf (dominio-mora copia) 99999)
      (format t "Mora da copia: ~a~%" (dominio-mora copia))
      (format t "Mora do original: ~a~%" (dominio-mora (first dominios))))))

(main)
