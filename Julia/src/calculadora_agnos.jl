function calcular_edad(mascota, edad)

    if mascota == "perro"

        println("\nLa edad de tu perro en años humanos es equivalente a ", (edad * 7), " años.")

    elseif mascota == "gato"

        println("\nLa edad de tu gato en años humanos es equivalente a ", (edad * 6), " años.")

    else

        println("\nTipo me mascota no reconocido, lo siento.")

    end

end

print("\n¿Que tipo de mascota tienes? (perro o gato): ")
mascota = readline()
print("\n¿Cuantos años tiene tu mascota?: ")
edad = parse(Int, readline())
calcular_edad(mascota, edad)