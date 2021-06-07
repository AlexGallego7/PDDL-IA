(define (problem catering-19platos-2incmpls)
    (:domain catering)
    (:objects Potaje_de_Alubias Canelones_de_Carne Gazpacho Spaghettis_Bolonesa Cuscus Judias_Verdes Fideua_con_Sepia Tagliatelle_Bolonesa Paella Escudella Croquetas Pastel_de_Pan Ramen Macarrones_Bolonesa Sushi Crema_Calabacin Huevos_Rellenos Patatas_Caliu Ensalada_de_Col - primero
              Milanesa_Napolitana Berenjas_al_Horno Crema_Zanahoria Canelones_de_Pollo Rape_al_Limon Merluza_a_Naranja Albondigas Calsotada Tortilla_de_Espinacas Bacalao Suquet_de_Pescado Raviolli Fingers_de_Pollo Pastel_de_Verduras Calamares_a_la_Romana Costillas_de_Cerdo Falafel Sopa_de_Miso Lasana_de_Atun - segundo
              Pescado Carne Pasta Vegetal Sopa - tipo
              Viernes Jueves Miercoles Martes Lunes - dia
    )
    (:init
       (es_tipo Potaje_de_Alubias Sopa)
       (es_tipo Canelones_de_Carne Carne)
       (es_tipo Gazpacho Sopa)
       (es_tipo Spaghettis_Bolonesa Pasta)
       (es_tipo Cuscus Vegetal)
       (es_tipo Judias_Verdes Vegetal)
       (es_tipo Fideua_con_Sepia Pescado)
       (es_tipo Tagliatelle_Bolonesa Pasta)
       (es_tipo Paella Pescado)
       (es_tipo Escudella Sopa)
       (es_tipo Croquetas Carne)
       (es_tipo Pastel_de_Pan Vegetal)
       (es_tipo Ramen Sopa)
       (es_tipo Macarrones_Bolonesa Pasta)
       (es_tipo Sushi Pescado)
       (es_tipo Crema_Calabacin Vegetal)
       (es_tipo Huevos_Rellenos Carne)
       (es_tipo Patatas_Caliu Vegetal)
       (es_tipo Ensalada_de_Col Vegetal)
       (es_tipo Milanesa_Napolitana Carne)
       (es_tipo Berenjas_al_Horno Vegetal)
       (es_tipo Crema_Zanahoria Sopa)
       (es_tipo Canelones_de_Pollo Carne)
       (es_tipo Rape_al_Limon Pescado)
       (es_tipo Merluza_a_Naranja Pescado)
       (es_tipo Albondigas Carne)
       (es_tipo Calsotada Vegetal)
       (es_tipo Tortilla_de_Espinacas Vegetal)
       (es_tipo Bacalao Pescado)
       (es_tipo Suquet_de_Pescado Sopa)
       (es_tipo Raviolli Pasta)
       (es_tipo Fingers_de_Pollo Carne)
       (es_tipo Pastel_de_Verduras Vegetal)
       (es_tipo Calamares_a_la_Romana Pescado)
       (es_tipo Costillas_de_Cerdo Carne)
       (es_tipo Falafel Carne)
       (es_tipo Sopa_de_Miso Sopa)
       (es_tipo Lasana_de_Atun Pescado)
       (incompatible Croquetas Tortilla_de_Espinacas)
       (incompatible Paella Albondigas)
       (not (servido Viernes))
       (not (servido Jueves))
       (not (servido Miercoles))
       (not (servido Martes))
       (not (servido Lunes))
       (= (precio-plato Potaje_de_Alubias) 5)
       (= (cals-plato Potaje_de_Alubias) 562)
       (= (precio-plato Canelones_de_Carne) 6)
       (= (cals-plato Canelones_de_Carne) 689)
       (= (precio-plato Gazpacho) 7)
       (= (cals-plato Gazpacho) 278)
       (= (precio-plato Spaghettis_Bolonesa) 8)
       (= (cals-plato Spaghettis_Bolonesa) 344)
       (= (precio-plato Cuscus) 8)
       (= (cals-plato Cuscus) 378)
       (= (precio-plato Judias_Verdes) 8)
       (= (cals-plato Judias_Verdes) 663)
       (= (precio-plato Fideua_con_Sepia) 7)
       (= (cals-plato Fideua_con_Sepia) 341)
       (= (precio-plato Tagliatelle_Bolonesa) 8)
       (= (cals-plato Tagliatelle_Bolonesa) 540)
       (= (precio-plato Paella) 7)
       (= (cals-plato Paella) 688)
       (= (precio-plato Escudella) 8)
       (= (cals-plato Escudella) 384)
       (= (precio-plato Croquetas) 8)
       (= (cals-plato Croquetas) 449)
       (= (precio-plato Pastel_de_Pan) 8)
       (= (cals-plato Pastel_de_Pan) 473)
       (= (precio-plato Ramen) 9)
       (= (cals-plato Ramen) 630)
       (= (precio-plato Macarrones_Bolonesa) 9)
       (= (cals-plato Macarrones_Bolonesa) 502)
       (= (precio-plato Sushi) 9)
       (= (cals-plato Sushi) 680)
       (= (precio-plato Crema_Calabacin) 5)
       (= (cals-plato Crema_Calabacin) 360)
       (= (precio-plato Huevos_Rellenos) 9)
       (= (cals-plato Huevos_Rellenos) 370)
       (= (precio-plato Patatas_Caliu) 8)
       (= (cals-plato Patatas_Caliu) 519)
       (= (precio-plato Ensalada_de_Col) 7)
       (= (cals-plato Ensalada_de_Col) 528)
       (= (precio-plato Milanesa_Napolitana) 11)
       (= (cals-plato Milanesa_Napolitana) 863)
       (= (precio-plato Berenjas_al_Horno) 10)
       (= (cals-plato Berenjas_al_Horno) 734)
       (= (precio-plato Crema_Zanahoria) 14)
       (= (cals-plato Crema_Zanahoria) 643)
       (= (precio-plato Canelones_de_Pollo) 9)
       (= (cals-plato Canelones_de_Pollo) 460)
       (= (precio-plato Rape_al_Limon) 11)
       (= (cals-plato Rape_al_Limon) 535)
       (= (precio-plato Merluza_a_Naranja) 10)
       (= (cals-plato Merluza_a_Naranja) 427)
       (= (precio-plato Albondigas) 9)
       (= (cals-plato Albondigas) 410)
       (= (precio-plato Calsotada) 9)
       (= (cals-plato Calsotada) 866)
       (= (precio-plato Tortilla_de_Espinacas) 14)
       (= (cals-plato Tortilla_de_Espinacas) 472)
       (= (precio-plato Bacalao) 14)
       (= (cals-plato Bacalao) 521)
       (= (precio-plato Suquet_de_Pescado) 11)
       (= (cals-plato Suquet_de_Pescado) 869)
       (= (precio-plato Raviolli) 12)
       (= (cals-plato Raviolli) 770)
       (= (precio-plato Fingers_de_Pollo) 14)
       (= (cals-plato Fingers_de_Pollo) 586)
       (= (precio-plato Pastel_de_Verduras) 9)
       (= (cals-plato Pastel_de_Verduras) 462)
       (= (precio-plato Calamares_a_la_Romana) 14)
       (= (cals-plato Calamares_a_la_Romana) 759)
       (= (precio-plato Costillas_de_Cerdo) 9)
       (= (cals-plato Costillas_de_Cerdo) 581)
       (= (precio-plato Falafel) 8)
       (= (cals-plato Falafel) 813)
       (= (precio-plato Sopa_de_Miso) 10)
       (= (cals-plato Sopa_de_Miso) 722)
       (= (precio-plato Lasana_de_Atun) 8)
       (= (cals-plato Lasana_de_Atun) 452)
       (= (total-cost) 0)
    )
    (:goal (
         forall (?d - dia) (servido ?d)
        )
    )
    (:metric minimize (total-cost))
)
