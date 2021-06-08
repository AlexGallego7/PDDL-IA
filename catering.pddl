(define (domain catering)

    (:requirements :equality :adl :typing :fluents
        
    )

    (:types
        plato - object
        tipo - object
        primero segundo - plato
        dia - object
    )


    (:predicates
        (es_tipo ?plato - plato ?tipo - tipo)       ;; ?plato pertenece a ?tipo
        (incompatible ?plato1 - plato ?plato2 - plato)  ;; ?plato1 es incompatible con ?plato2
        (menu_dia ?dia - dia ?primero - primero ?segundo - segundo)
        (servido ?dia - dia)
        (primero_usado ?p - primero)
        (segundo_usado ?s - segundo)
        (tp_anterior ?tp - tipo)
        (ts_anterior ?ts - tipo)
        (plato_dia ?d - dia ?p - plato)
        
    )

    (:functions
        (cals-plato ?plato - plato) ;; calorias de ?plato
        (precio-plato ?plato - plato) ;; precio de ?plato

        (total-cost) ;; coste total del menu
    )



    (:action preparar_menu
        :parameters (?d - dia ?p - primero ?s - segundo ?tp - tipo ?ts - tipo)
        :precondition (or
            (plato_dia ?d ?p) (plato_dia ?d ?s)
            (and 
            (not (incompatible ?p ?s)) (not (servido ?d))
            (and (<= (+ (cals-plato ?p) (cals-plato?s)) 1500) (>= (+ (cals-plato ?p) (cals-plato?s)) 1000))
            (not (primero_usado ?p)) (not (segundo_usado ?s))
            (es_tipo ?p ?tp) (es_tipo ?s ?ts)
            (not (tp_anterior ?tp)) (not (ts_anterior ?ts))
            )
        )
        :effect (and 
            (servido ?d) (menu_dia ?d ?p ?s) 
            (primero_usado ?p) (segundo_usado ?s)
            (tp_anterior ?tp) (ts_anterior ?ts)
            (increase (total-cost) (precio-plato ?p))
            (increase (total-cost) (precio-plato ?s))
        )
    )

)