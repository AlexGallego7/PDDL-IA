(define (problem catering-1)
    (:domain catering)
    (:objects Macarrones Croquetas Ensalada Gazpacho Paella Ramen Sushi - primero
              Calsotada Cuscus Falafel Sopa_Miso Hamburguesa Ravioli Salmon - segundo
              Pescado Carne Sopa Pasta Vegetal - tipo ;;pasta, pescado, carne, etc
              Lunes Martes Miercoles Jueves Viernes - dia
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

        (not (servido Lunes))
        (not (servido Martes))
        (not (servido Miercoles))
        (not (servido Jueves))
        (not (servido Viernes))

        ;(= (total-cost) 0)
        
    )

    (:goal (
        forall (?d - dia) (servido ?d) 
        )
    )
)