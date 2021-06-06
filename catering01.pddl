(define (problem catering01)
    (:domain catering)
    (:objects Macarrones Croquetas Ensalada Gazpacho Paella Ramen Sushi - primero
              Calsotada Cuscus Falafel Sopa_Miso Hamburguesa Ravioli Salmon - segundo
              Pescado Carne Sopa Pasta Vegetal - tipo 
              Viernes Jueves Miercoles Martes Lunes - dia
    )
    (:init 
        (es_tipo Macarrones Pasta)
        (es_tipo Croquetas Carne)
        (es_tipo Ensalada Vegetal)
        (es_tipo Gazpacho Sopa)
        (es_tipo Paella Pescado)
        (es_tipo Ramen Sopa)
        (es_tipo Sushi Pescado)
        (es_tipo Calsotada Vegetal)
        (es_tipo Cuscus Vegetal)
        (es_tipo Falafel Carne)
        (es_tipo Sopa_Miso Sopa)
        (es_tipo Hamburguesa Carne)
        (es_tipo Ravioli Pasta)
        (es_tipo Salmon Pescado)

        (incompatible Macarrones Calsotada)
        (incompatible Croquetas Falafel)

        (plato_dia Jueves Paella)

        (not (servido Lunes))
        (not (servido Martes))
        (not (servido Miercoles))
        (not (servido Jueves))
        (not (servido Viernes))

        (= (precio-plato Macarrones) 7)
        (= (precio-plato Croquetas) 7)
        (= (precio-plato Ensalada) 7)
        (= (precio-plato Gazpacho) 7)
        (= (precio-plato Paella) 7)
        (= (precio-plato Ramen) 7)
        (= (precio-plato Sushi) 7)
        (= (precio-plato Calsotada) 7)
        (= (precio-plato Cuscus) 7)
        (= (precio-plato Falafel) 7)
        (= (precio-plato Sopa_Miso) 7)
        (= (precio-plato Hamburguesa) 7)        
        (= (precio-plato Ravioli) 7)
        (= (precio-plato Salmon) 7)

        (= (cals-plato Macarrones) 500)
        (= (cals-plato Croquetas) 500)
        (= (cals-plato Ensalada) 500)
        (= (cals-plato Gazpacho) 500)
        (= (cals-plato Paella) 500)
        (= (cals-plato Ramen) 500)
        (= (cals-plato Sushi) 1)
        (= (cals-plato Calsotada) 500)
        (= (cals-plato Cuscus) 500)
        (= (cals-plato Falafel) 500)
        (= (cals-plato Sopa_Miso) 500)
        (= (cals-plato Hamburguesa) 500)        
        (= (cals-plato Ravioli) 500)
        (= (cals-plato Salmon) 500)

        (= (total-cost) 0)
        
    )

    (:goal (
        forall (?d - dia) (servido ?d) 
        )
    )
    
    (:metric minimize (total-cost))

)