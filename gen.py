import random

primeros = [['Ensalada_de_Col', 'Vegetal'], ['Judias_Verdes', 'Vegetal'], ['Cuscus', 'Vegetal'], ['Macarrones_Bolonesa', 'Pasta'], ['Croquetas', 'Carne'], ['Gazpacho', 'Sopa'], ['Paella', 'Pescado'], ['Ramen', 'Sopa'], ['Sushi', 'Pescado'], ['Canelones_de_Carne', 'Carne'], ['Crema_Calabacin', 'Vegetal'], ['Fideua_con_Sepia', 'Pescado'], ['Patatas_Caliu', 'Vegetal'], ['Huevos_Rellenos', 'Carne'], ['Potaje_de_Alubias', 'Sopa'], ['Pastel_de_Pan', 'Vegetal'], ['Spaghettis_Bolonesa', 'Pasta'], ['Tagliatelle_Bolonesa', 'Pasta'], ['Risotto_de_Pescado', 'Pescado'], ['Escudella', 'Sopa']]
segundos = [['Albondigas', 'Carne'], ['Canelones_de_Pollo', 'Carne'], ['Berenjas_al_Horno', 'Vegetal'], ['Merluza_a_Naranja', 'Pescado'], ['Milanesa_Napolitana', 'Carne'], ['Sopa_de_Miso', 'Sopa'], ['Pastel_de_Verduras', 'Vegetal'], ['Falafel', 'Carne'], ['Calsotada', 'Vegetal'], ['Costillas_de_Cerdo', 'Carne'], ['Calamares_a_la_Romana', 'Pescado'], ['Tortilla_de_Espinacas', 'Vegetal'], ['Lasana_de_Atun', 'Pescado'], ['Fingers_de_Pollo', 'Carne'], ['Salmon_Ahumado', 'Pescado'], ['Raviolli', 'Pasta'], ['Suquet_de_Pescado', 'Sopa'], ['Rape_al_Limon', 'Pescado'], ['Bacalao', 'Pescado'], ['Crema_Zanahoria', 'Sopa']]
tipos = ['Pescado', 'Carne', 'Pasta', 'Vegetal', 'Sopa']
dias = ['Viernes', 'Jueves', 'Miercoles', 'Martes', 'Lunes']

def n_primeros(p, n):
    return random.sample(p, n)

def n_segundos(p, n):
    return random.sample(p, n)


def generate():
    n = random.randrange(15, 20)
    ni = random.randrange(0, 10)

    set_p = n_primeros(primeros, n)
    set_s = n_segundos(segundos, n)

    set_ip = n_primeros(set_p, ni)
    set_is = n_segundos(set_s, ni)

    f = open(f"catering-{n}platos-{ni}incmpls.pddl", "a")

    f.write(f"(define (problem catering-{n})\n")
    f.write("    (:domain catering)\n")

    """
        OBJECTS
    """

    f.write("    (:objects ")

    for p in set_p:
        f.write(f"{p[0]} ")
    f.write("- primero\n")

    f.write("              ")

    for s in set_s:
        f.write(f"{s[0]} ")
    f.write("- segundo\n")

    f.write("              ")

    for t in tipos:
        f.write(f"{t} ")
    f.write("- tipo\n")

    f.write("              ")

    for d in dias:
        f.write(f"{d} ")
    f.write("- dia\n")

    f.write("    )\n")

    """
        INIT
    """
    f.write("    (:init\n")
    
    for p in set_p:
        f.write(f"       (es_tipo {p[0]} {p[1]})\n")

    for s in set_s:
        f.write(f"       (es_tipo {s[0]} {s[1]})\n")

    for p, s in zip(set_ip, set_is):
        f.write(f"       (incompatible {p[0]} {s[0]})\n")

    for d in dias:
        f.write(f"       (not (servido {d}))\n")

    f.write("    )\n")

    """
        GOAL
    """
    f.write("    (:goal (\n         forall (?d - dia) (servido ?d)\n        )\n    )\n)")


    f.close()

    return

generate()