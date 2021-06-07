(define (problem catering-20platos-7incmpls)
    (:domain catering)
    (:objects Fideua_con_Sepia Paella Crema_Calabacin Risotto_de_Pescado Huevos_Rellenos Croquetas Ramen Ensalada_de_Col Tagliatelle_Bolonesa Canelones_de_Carne Potaje_de_Alubias Patatas_Caliu Gazpacho Pastel_de_Pan Spaghettis_Bolonesa Escudella Judias_Verdes Cuscus Sushi Macarrones_Bolonesa - primero
              Sopa_de_Miso Milanesa_Napolitana Costillas_de_Cerdo Canelones_de_Pollo Tortilla_de_Espinacas Lasana_de_Atun Fingers_de_Pollo Berenjas_al_Horno Merluza_a_Naranja Bacalao Suquet_de_Pescado Albondigas Crema_Zanahoria Calamares_a_la_Romana Salmon_Ahumado Rape_al_Limon Pastel_de_Verduras Calsotada Raviolli Falafel - segundo
              Pescado Carne Pasta Vegetal Sopa - tipo
              Viernes Jueves Miercoles Martes Lunes - dia
    )
    (:init
       (es_tipo Fideua_con_Sepia Pescado)
       (es_tipo Paella Pescado)
       (es_tipo Crema_Calabacin Vegetal)
       (es_tipo Risotto_de_Pescado Pescado)
       (es_tipo Huevos_Rellenos Carne)
       (es_tipo Croquetas Carne)
       (es_tipo Ramen Sopa)
       (es_tipo Ensalada_de_Col Vegetal)
       (es_tipo Tagliatelle_Bolonesa Pasta)
       (es_tipo Canelones_de_Carne Carne)
       (es_tipo Potaje_de_Alubias Sopa)
       (es_tipo Patatas_Caliu Vegetal)
       (es_tipo Gazpacho Sopa)
       (es_tipo Pastel_de_Pan Vegetal)
       (es_tipo Spaghettis_Bolonesa Pasta)
       (es_tipo Escudella Sopa)
       (es_tipo Judias_Verdes Vegetal)
       (es_tipo Cuscus Vegetal)
       (es_tipo Sushi Pescado)
       (es_tipo Macarrones_Bolonesa Pasta)
       (es_tipo Sopa_de_Miso Sopa)
       (es_tipo Milanesa_Napolitana Carne)
       (es_tipo Costillas_de_Cerdo Carne)
       (es_tipo Canelones_de_Pollo Carne)
       (es_tipo Tortilla_de_Espinacas Vegetal)
       (es_tipo Lasana_de_Atun Pescado)
       (es_tipo Fingers_de_Pollo Carne)
       (es_tipo Berenjas_al_Horno Vegetal)
       (es_tipo Merluza_a_Naranja Pescado)
       (es_tipo Bacalao Pescado)
       (es_tipo Suquet_de_Pescado Sopa)
       (es_tipo Albondigas Carne)
       (es_tipo Crema_Zanahoria Sopa)
       (es_tipo Calamares_a_la_Romana Pescado)
       (es_tipo Salmon_Ahumado Pescado)
       (es_tipo Rape_al_Limon Pescado)
       (es_tipo Pastel_de_Verduras Vegetal)
       (es_tipo Calsotada Vegetal)
       (es_tipo Raviolli Pasta)
       (es_tipo Falafel Carne)
       (incompatible Tagliatelle_Bolonesa Bacalao)
       (incompatible Croquetas Calamares_a_la_Romana)
       (incompatible Judias_Verdes Pastel_de_Verduras)
       (incompatible Escudella Canelones_de_Pollo)
       (incompatible Macarrones_Bolonesa Tortilla_de_Espinacas)
       (incompatible Spaghettis_Bolonesa Milanesa_Napolitana)
       (incompatible Ramen Salmon_Ahumado)
       (not (servido Viernes))
       (not (servido Jueves))
       (not (servido Miercoles))
       (not (servido Martes))
       (not (servido Lunes))
       (= (precio-plato Fideua_con_Sepia) 7)
       (= (cals-plato Fideua_con_Sepia) 334)
       (= (precio-plato Paella) 7)
       (= (cals-plato Paella) 654)
       (= (precio-plato Crema_Calabacin) 5)
       (= (cals-plato Crema_Calabacin) 284)
       (= (precio-plato Risotto_de_Pescado) 8)
       (= (cals-plato Risotto_de_Pescado) 369)
       (= (precio-plato Huevos_Rellenos) 6)
       (= (cals-plato Huevos_Rellenos) 420)
       (= (precio-plato Croquetas) 7)
       (= (cals-plato Croquetas) 276)
       (= (precio-plato Ramen) 6)
       (= (cals-plato Ramen) 517)
       (= (precio-plato Ensalada_de_Col) 5)
       (= (cals-plato Ensalada_de_Col) 661)
       (= (precio-plato Tagliatelle_Bolonesa) 6)
       (= (cals-plato Tagliatelle_Bolonesa) 548)
       (= (precio-plato Canelones_de_Carne) 6)
       (= (cals-plato Canelones_de_Carne) 491)
       (= (precio-plato Potaje_de_Alubias) 7)
       (= (cals-plato Potaje_de_Alubias) 614)
       (= (precio-plato Patatas_Caliu) 5)
       (= (cals-plato Patatas_Caliu) 428)
       (= (precio-plato Gazpacho) 7)
       (= (cals-plato Gazpacho) 431)
       (= (precio-plato Pastel_de_Pan) 5)
       (= (cals-plato Pastel_de_Pan) 289)
       (= (precio-plato Spaghettis_Bolonesa) 6)
       (= (cals-plato Spaghettis_Bolonesa) 625)
       (= (precio-plato Escudella) 6)
       (= (cals-plato Escudella) 275)
       (= (precio-plato Judias_Verdes) 9)
       (= (cals-plato Judias_Verdes) 563)
       (= (precio-plato Cuscus) 8)
       (= (cals-plato Cuscus) 623)
       (= (precio-plato Sushi) 9)
       (= (cals-plato Sushi) 610)
       (= (precio-plato Macarrones_Bolonesa) 6)
       (= (cals-plato Macarrones_Bolonesa) 674)
       (= (precio-plato Sopa_de_Miso) 11)
       (= (cals-plato Sopa_de_Miso) 899)
       (= (precio-plato Milanesa_Napolitana) 11)
       (= (cals-plato Milanesa_Napolitana) 550)
       (= (precio-plato Costillas_de_Cerdo) 13)
       (= (cals-plato Costillas_de_Cerdo) 776)
       (= (precio-plato Canelones_de_Pollo) 11)
       (= (cals-plato Canelones_de_Pollo) 882)
       (= (precio-plato Tortilla_de_Espinacas) 9)
       (= (cals-plato Tortilla_de_Espinacas) 630)
       (= (precio-plato Lasana_de_Atun) 10)
       (= (cals-plato Lasana_de_Atun) 872)
       (= (precio-plato Fingers_de_Pollo) 12)
       (= (cals-plato Fingers_de_Pollo) 858)
       (= (precio-plato Berenjas_al_Horno) 12)
       (= (cals-plato Berenjas_al_Horno) 691)
       (= (precio-plato Merluza_a_Naranja) 11)
       (= (cals-plato Merluza_a_Naranja) 601)
       (= (precio-plato Bacalao) 8)
       (= (cals-plato Bacalao) 762)
       (= (precio-plato Suquet_de_Pescado) 9)
       (= (cals-plato Suquet_de_Pescado) 829)
       (= (precio-plato Albondigas) 11)
       (= (cals-plato Albondigas) 896)
       (= (precio-plato Crema_Zanahoria) 13)
       (= (cals-plato Crema_Zanahoria) 547)
       (= (precio-plato Calamares_a_la_Romana) 14)
       (= (cals-plato Calamares_a_la_Romana) 450)
       (= (precio-plato Salmon_Ahumado) 12)
       (= (cals-plato Salmon_Ahumado) 735)
       (= (precio-plato Rape_al_Limon) 11)
       (= (cals-plato Rape_al_Limon) 822)
       (= (precio-plato Pastel_de_Verduras) 10)
       (= (cals-plato Pastel_de_Verduras) 765)
       (= (precio-plato Calsotada) 14)
       (= (cals-plato Calsotada) 682)
       (= (precio-plato Raviolli) 14)
       (= (cals-plato Raviolli) 815)
       (= (precio-plato Falafel) 9)
       (= (cals-plato Falafel) 781)
       (= (total-cost) 0)
    )
    (:goal (
         forall (?d - dia) (servido ?d)
        )
    )
    (:metric minimize (total-cost))
)