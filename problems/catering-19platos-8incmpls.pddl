(define (problem catering-19platos-8incmpls)
    (:domain catering)
    (:objects Escudella Macarrones_Bolonesa Gazpacho Risotto_de_Pescado Pastel_de_Pan Spaghettis_Bolonesa Patatas_Caliu Paella Ramen Croquetas Canelones_de_Carne Judias_Verdes Sushi Cuscus Potaje_de_Alubias Huevos_Rellenos Ensalada_de_Col Tagliatelle_Bolonesa Fideua_con_Sepia - primero
              Bacalao Fingers_de_Pollo Pastel_de_Verduras Suquet_de_Pescado Raviolli Sopa_de_Miso Costillas_de_Cerdo Lasana_de_Atun Albondigas Milanesa_Napolitana Calamares_a_la_Romana Calsotada Crema_Zanahoria Canelones_de_Pollo Berenjas_al_Horno Tortilla_de_Espinacas Falafel Salmon_Ahumado Merluza_a_Naranja - segundo
              Pescado Carne Pasta Vegetal Sopa - tipo
              Viernes Jueves Miercoles Martes Lunes - dia
    )
    (:init
       (es_tipo Escudella Sopa)
       (es_tipo Macarrones_Bolonesa Pasta)
       (es_tipo Gazpacho Sopa)
       (es_tipo Risotto_de_Pescado Pescado)
       (es_tipo Pastel_de_Pan Vegetal)
       (es_tipo Spaghettis_Bolonesa Pasta)
       (es_tipo Patatas_Caliu Vegetal)
       (es_tipo Paella Pescado)
       (es_tipo Ramen Sopa)
       (es_tipo Croquetas Carne)
       (es_tipo Canelones_de_Carne Carne)
       (es_tipo Judias_Verdes Vegetal)
       (es_tipo Sushi Pescado)
       (es_tipo Cuscus Vegetal)
       (es_tipo Potaje_de_Alubias Sopa)
       (es_tipo Huevos_Rellenos Carne)
       (es_tipo Ensalada_de_Col Vegetal)
       (es_tipo Tagliatelle_Bolonesa Pasta)
       (es_tipo Fideua_con_Sepia Pescado)
       (es_tipo Bacalao Pescado)
       (es_tipo Fingers_de_Pollo Carne)
       (es_tipo Pastel_de_Verduras Vegetal)
       (es_tipo Suquet_de_Pescado Sopa)
       (es_tipo Raviolli Pasta)
       (es_tipo Sopa_de_Miso Sopa)
       (es_tipo Costillas_de_Cerdo Carne)
       (es_tipo Lasana_de_Atun Pescado)
       (es_tipo Albondigas Carne)
       (es_tipo Milanesa_Napolitana Carne)
       (es_tipo Calamares_a_la_Romana Pescado)
       (es_tipo Calsotada Vegetal)
       (es_tipo Crema_Zanahoria Sopa)
       (es_tipo Canelones_de_Pollo Carne)
       (es_tipo Berenjas_al_Horno Vegetal)
       (es_tipo Tortilla_de_Espinacas Vegetal)
       (es_tipo Falafel Carne)
       (es_tipo Salmon_Ahumado Pescado)
       (es_tipo Merluza_a_Naranja Pescado)
       (incompatible Pastel_de_Pan Albondigas)
       (incompatible Risotto_de_Pescado Crema_Zanahoria)
       (incompatible Gazpacho Costillas_de_Cerdo)
       (incompatible Macarrones_Bolonesa Suquet_de_Pescado)
       (incompatible Patatas_Caliu Sopa_de_Miso)
       (incompatible Judias_Verdes Canelones_de_Pollo)
       (incompatible Tagliatelle_Bolonesa Fingers_de_Pollo)
       (incompatible Potaje_de_Alubias Bacalao)
       (not (servido Viernes))
       (not (servido Jueves))
       (not (servido Miercoles))
       (not (servido Martes))
       (not (servido Lunes))
       (= (precio-plato Escudella) 7)
       (= (cals-plato Escudella) 615)
       (= (precio-plato Macarrones_Bolonesa) 6)
       (= (cals-plato Macarrones_Bolonesa) 307)
       (= (precio-plato Gazpacho) 5)
       (= (cals-plato Gazpacho) 338)
       (= (precio-plato Risotto_de_Pescado) 6)
       (= (cals-plato Risotto_de_Pescado) 658)
       (= (precio-plato Pastel_de_Pan) 5)
       (= (cals-plato Pastel_de_Pan) 375)
       (= (precio-plato Spaghettis_Bolonesa) 6)
       (= (cals-plato Spaghettis_Bolonesa) 383)
       (= (precio-plato Patatas_Caliu) 9)
       (= (cals-plato Patatas_Caliu) 626)
       (= (precio-plato Paella) 9)
       (= (cals-plato Paella) 710)
       (= (precio-plato Ramen) 8)
       (= (cals-plato Ramen) 409)
       (= (precio-plato Croquetas) 9)
       (= (cals-plato Croquetas) 464)
       (= (precio-plato Canelones_de_Carne) 8)
       (= (cals-plato Canelones_de_Carne) 495)
       (= (precio-plato Judias_Verdes) 5)
       (= (cals-plato Judias_Verdes) 545)
       (= (precio-plato Sushi) 6)
       (= (cals-plato Sushi) 282)
       (= (precio-plato Cuscus) 5)
       (= (cals-plato Cuscus) 293)
       (= (precio-plato Potaje_de_Alubias) 6)
       (= (cals-plato Potaje_de_Alubias) 465)
       (= (precio-plato Huevos_Rellenos) 8)
       (= (cals-plato Huevos_Rellenos) 561)
       (= (precio-plato Ensalada_de_Col) 8)
       (= (cals-plato Ensalada_de_Col) 395)
       (= (precio-plato Tagliatelle_Bolonesa) 6)
       (= (cals-plato Tagliatelle_Bolonesa) 619)
       (= (precio-plato Fideua_con_Sepia) 9)
       (= (cals-plato Fideua_con_Sepia) 529)
       (= (precio-plato Bacalao) 8)
       (= (cals-plato Bacalao) 447)
       (= (precio-plato Fingers_de_Pollo) 8)
       (= (cals-plato Fingers_de_Pollo) 538)
       (= (precio-plato Pastel_de_Verduras) 11)
       (= (cals-plato Pastel_de_Verduras) 872)
       (= (precio-plato Suquet_de_Pescado) 13)
       (= (cals-plato Suquet_de_Pescado) 412)
       (= (precio-plato Raviolli) 8)
       (= (cals-plato Raviolli) 420)
       (= (precio-plato Sopa_de_Miso) 8)
       (= (cals-plato Sopa_de_Miso) 687)
       (= (precio-plato Costillas_de_Cerdo) 13)
       (= (cals-plato Costillas_de_Cerdo) 822)
       (= (precio-plato Lasana_de_Atun) 9)
       (= (cals-plato Lasana_de_Atun) 800)
       (= (precio-plato Albondigas) 9)
       (= (cals-plato Albondigas) 784)
       (= (precio-plato Milanesa_Napolitana) 11)
       (= (cals-plato Milanesa_Napolitana) 604)
       (= (precio-plato Calamares_a_la_Romana) 11)
       (= (cals-plato Calamares_a_la_Romana) 532)
       (= (precio-plato Calsotada) 13)
       (= (cals-plato Calsotada) 544)
       (= (precio-plato Crema_Zanahoria) 9)
       (= (cals-plato Crema_Zanahoria) 835)
       (= (precio-plato Canelones_de_Pollo) 8)
       (= (cals-plato Canelones_de_Pollo) 874)
       (= (precio-plato Berenjas_al_Horno) 14)
       (= (cals-plato Berenjas_al_Horno) 798)
       (= (precio-plato Tortilla_de_Espinacas) 8)
       (= (cals-plato Tortilla_de_Espinacas) 576)
       (= (precio-plato Falafel) 12)
       (= (cals-plato Falafel) 832)
       (= (precio-plato Salmon_Ahumado) 11)
       (= (cals-plato Salmon_Ahumado) 789)
       (= (precio-plato Merluza_a_Naranja) 9)
       (= (cals-plato Merluza_a_Naranja) 451)
       (= (total-cost) 0)
    )
    (:goal (
         forall (?d - dia) (servido ?d)
        )
    )
    (:metric minimize (total-cost))
)
