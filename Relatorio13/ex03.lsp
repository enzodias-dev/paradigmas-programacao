(defstruct garota-magica nome escuridao bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((grupo (list (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 2)
                      (make-garota-magica :nome "Sayaka" :escuridao 60 :bruxas 5)
                      (make-garota-magica :nome "Homura" :escuridao 35 :bruxas 12)))
         (nova (make-garota-magica :nome "Kyoko" :escuridao 20 :bruxas 8))
         (grupo-novo (cons nova grupo))
         (original (second grupo))
         (purificada (purifica original 25)))
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (total-de-bruxas grupo))
    (format t "Escuridao total do grupo novo: ~a~%" (escuridao-total grupo-novo))
    (format t "Escuridao total do grupo original: ~a~%" (escuridao-total grupo))
    (format t "Escuridao da original (~a): ~a~%"
            (garota-magica-nome original) (garota-magica-escuridao original))
    (format t "Escuridao da purificada (~a): ~a~%"
            (garota-magica-nome purificada) (garota-magica-escuridao purificada))))

(main)
