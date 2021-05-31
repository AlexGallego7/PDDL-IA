(define (domain catering)

    (:requirements :adl :typing)

    (:types
        plato - object
        primero segundo - plato
        calorias - object
        precio - object
        dia - object
    )


    (:predicates
        (pertenece_a ?plato - plato ?tipo - tipo)       ;; ?plato pertenece a ?tipo
        (cant_cals ?plato - plato ?cals - calorias)     ;; ?plato tiene ¿cals
        (cuesta ?plato - plato ?precio - precio)        ;; ??plato cuesta ?precio
        (incompatible ?plato1 - plato ?plato2 - plato)  ;; ?plato1 es incompatible con ?plato2
    )


    (:action poner_segundo
        :parameters (?p - plato)
        :precondition (and 
            
        )
        :effect (and 
            
        )
    )

)