(define (problem catering-19platos-7incmpls)
    (:domain catering)
    (:objects Ensalada_de_Col Escudella Ramen Croquetas Huevos_Rellenos Pastel_de_Pan Potaje_de_Alubias Crema_Calabacin Canelones_de_Carne Tagliatelle_Bolonesa Macarrones_Bolonesa Risotto_de_Pescado Judias_Verdes Gazpacho Fideua_con_Sepia Spaghettis_Bolonesa Cuscus Patatas_Caliu Paella - primero
              Rape_al_Limon Suquet_de_Pescado Pastel_de_Verduras Merluza_a_Naranja Calamares_a_la_Romana Falafel Bacalao Calsotada Sopa_de_Miso Canelones_de_Pollo Salmon_Ahumado Albondigas Fingers_de_Pollo Lasana_de_Atun Milanesa_Napolitana Berenjas_al_Horno Tortilla_de_Espinacas Raviolli Crema_Zanahoria - segundo
              Pescado Carne Pasta Vegetal Sopa - tipo
              Viernes Jueves Miercoles Martes Lunes - dia
    )
    (:init
       (es_tipo Ensalada_de_Col Vegetal)
       (es_tipo Escudella Sopa)
       (es_tipo Ramen Sopa)
       (es_tipo Croquetas Carne)
       (es_tipo Huevos_Rellenos Carne)
       (es_tipo Pastel_de_Pan Vegetal)
       (es_tipo Potaje_de_Alubias Sopa)
       (es_tipo Crema_Calabacin Vegetal)
       (es_tipo Canelones_de_Carne Carne)
       (es_tipo Tagliatelle_Bolonesa Pasta)
       (es_tipo Macarrones_Bolonesa Pasta)
       (es_tipo Risotto_de_Pescado Pescado)
       (es_tipo Judias_Verdes Vegetal)
       (es_tipo Gazpacho Sopa)
       (es_tipo Fideua_con_Sepia Pescado)
       (es_tipo Spaghettis_Bolonesa Pasta)
       (es_tipo Cuscus Vegetal)
       (es_tipo Patatas_Caliu Vegetal)
       (es_tipo Paella Pescado)
       (es_tipo Rape_al_Limon Pescado)
       (es_tipo Suquet_de_Pescado Sopa)
       (es_tipo Pastel_de_Verduras Vegetal)
       (es_tipo Merluza_a_Naranja Pescado)
       (es_tipo Calamares_a_la_Romana Pescado)
       (es_tipo Falafel Carne)
       (es_tipo Bacalao Pescado)
       (es_tipo Calsotada Vegetal)
       (es_tipo Sopa_de_Miso Sopa)
       (es_tipo Canelones_de_Pollo Carne)
       (es_tipo Salmon_Ahumado Pescado)
       (es_tipo Albondigas Carne)
       (es_tipo Fingers_de_Pollo Carne)
       (es_tipo Lasana_de_Atun Pescado)
       (es_tipo Milanesa_Napolitana Carne)
       (es_tipo Berenjas_al_Horno Vegetal)
       (es_tipo Tortilla_de_Espinacas Vegetal)
       (es_tipo Raviolli Pasta)
       (es_tipo Crema_Zanahoria Sopa)
       (incompatible Spaghettis_Bolonesa Tortilla_de_Espinacas)
       (incompatible Ramen Pastel_de_Verduras)
       (incompatible Escudella Suquet_de_Pescado)
       (incompatible Pastel_de_Pan Merluza_a_Naranja)
       (incompatible Cuscus Lasana_de_Atun)
       (incompatible Potaje_de_Alubias Calamares_a_la_Romana)
       (incompatible Huevos_Rellenos Albondigas)
       (not (servido Viernes))
       (not (servido Jueves))
       (not (servido Miercoles))
       (not (servido Martes))
       (not (servido Lunes))
       (= (precio-plato Ensalada_de_Col) 6)
       (= (cals-plato Ensalada_de_Col) 547)
       (= (precio-plato Escudella) 7)
       (= (cals-plato Escudella) 347)
       (= (precio-plato Ramen) 5)
       (= (cals-plato Ramen) 573)
       (= (precio-plato Croquetas) 8)
       (= (cals-plato Croquetas) 684)
       (= (precio-plato Huevos_Rellenos) 6)
       (= (cals-plato Huevos_Rellenos) 408)
       (= (precio-plato Pastel_de_Pan) 6)
       (= (cals-plato Pastel_de_Pan) 472)
       (= (precio-plato Potaje_de_Alubias) 6)
       (= (cals-plato Potaje_de_Alubias) 357)
       (= (precio-plato Crema_Calabacin) 9)
       (= (cals-plato Crema_Calabacin) 700)
       (= (precio-plato Canelones_de_Carne) 5)
       (= (cals-plato Canelones_de_Carne) 657)
       (= (precio-plato Tagliatelle_Bolonesa) 8)
       (= (cals-plato Tagliatelle_Bolonesa) 348)
       (= (precio-plato Macarrones_Bolonesa) 8)
       (= (cals-plato Macarrones_Bolonesa) 676)
       (= (precio-plato Risotto_de_Pescado) 9)
       (= (cals-plato Risotto_de_Pescado) 675)
       (= (precio-plato Judias_Verdes) 5)
       (= (cals-plato Judias_Verdes) 343)
       (= (precio-plato Gazpacho) 9)
       (= (cals-plato Gazpacho) 351)
       (= (precio-plato Fideua_con_Sepia) 9)
       (= (cals-plato Fideua_con_Sepia) 346)
       (= (precio-plato Spaghettis_Bolonesa) 5)
       (= (cals-plato Spaghettis_Bolonesa) 740)
       (= (precio-plato Cuscus) 6)
       (= (cals-plato Cuscus) 478)
       (= (precio-plato Patatas_Caliu) 6)
       (= (cals-plato Patatas_Caliu) 553)
       (= (precio-plato Paella) 8)
       (= (cals-plato Paella) 383)
       (= (precio-plato Rape_al_Limon) 10)
       (= (cals-plato Rape_al_Limon) 545)
       (= (precio-plato Suquet_de_Pescado) 14)
       (= (cals-plato Suquet_de_Pescado) 453)
       (= (precio-plato Pastel_de_Verduras) 14)
       (= (cals-plato Pastel_de_Verduras) 436)
       (= (precio-plato Merluza_a_Naranja) 11)
       (= (cals-plato Merluza_a_Naranja) 556)
       (= (precio-plato Calamares_a_la_Romana) 13)
       (= (cals-plato Calamares_a_la_Romana) 440)
       (= (precio-plato Falafel) 11)
       (= (cals-plato Falafel) 573)
       (= (precio-plato Bacalao) 11)
       (= (cals-plato Bacalao) 840)
       (= (precio-plato Calsotada) 14)
       (= (cals-plato Calsotada) 700)
       (= (precio-plato Sopa_de_Miso) 10)
       (= (cals-plato Sopa_de_Miso) 527)
       (= (precio-plato Canelones_de_Pollo) 13)
       (= (cals-plato Canelones_de_Pollo) 898)
       (= (precio-plato Salmon_Ahumado) 8)
       (= (cals-plato Salmon_Ahumado) 717)
       (= (precio-plato Albondigas) 12)
       (= (cals-plato Albondigas) 679)
       (= (precio-plato Fingers_de_Pollo) 10)
       (= (cals-plato Fingers_de_Pollo) 444)
       (= (precio-plato Lasana_de_Atun) 8)
       (= (cals-plato Lasana_de_Atun) 649)
       (= (precio-plato Milanesa_Napolitana) 12)
       (= (cals-plato Milanesa_Napolitana) 826)
       (= (precio-plato Berenjas_al_Horno) 14)
       (= (cals-plato Berenjas_al_Horno) 762)
       (= (precio-plato Tortilla_de_Espinacas) 14)
       (= (cals-plato Tortilla_de_Espinacas) 451)
       (= (precio-plato Raviolli) 9)
       (= (cals-plato Raviolli) 843)
       (= (precio-plato Crema_Zanahoria) 13)
       (= (cals-plato Crema_Zanahoria) 780)
       (= (total-cost) 0)
    )
    (:goal (
         forall (?d - dia) (servido ?d)
        )
    )
    (:metric minimize (total-cost))
)
