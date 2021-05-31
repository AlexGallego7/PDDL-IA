(define (domain catering)

    (:requirements :equality :adl :typing ;;:fluents
        
    )

    (:types
        plato - object
        primero segundo - plato
        calorias - object
        precio - object
        dia - object
    )


    (:predicates
        (es_tipo ?plato - plato ?tipo - tipo)       ;; ?plato pertenece a ?tipo
        (incompatible ?plato1 - plato ?plato2 - plato)  ;; ?plato1 es incompatible con ?plato2
        (menu_dia ?dia - dia ?primero - primero ?segundo - segundo)
        (servido ?dia - dia)
        (primero_usado ?p)
        (segundo_usado ?s)
        
    )

    ;;(:functions
      ;  (cals-plato ?plato - plato) ;; calorias de ?plato
       ; (precio-plato ?plato - plato) ;; precio de ?plato

        ;(total-cost) ;; coste total del menu
    ;)

    (:action preparar_menu
        :parameters (?d - dia ?p - primero ?s - segundo)
        :precondition (and 
            (not (incompatible ?p ?s)) (not (servido ?d))
            (not (primero_usado ?p)) (not (segundo_usado ?s))
        )
        :effect (and 
            (servido ?d) (menu_dia ?d ?p ?s) 
            (primero_usado ?p) (segundo_usado ?s)
           ;(increase (total-cost) (precio-plato ?p))
           ;(increase (total-cost) (precio-plato ?s))
        )
    )



)