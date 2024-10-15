function calcular_raices(a, b, c)

    discriminante = (b ^ 2) - (4 * a * c)
    if discriminante > 0

        raiz_1 = (-b + sqrt(discriminante)) / (2 * a)
        raiz_2 = (-b - sqrt(discriminante)) / (2 * a)
        println("\nLas raices son: ", raiz_1, " y ", raiz_2, ".")
     
    elseif discriminante == 0

        raiz = -b / (2 * a)
        println("\nLas raices son iguales y son: ", raiz, ".")

    else

        println("\nLas raices no son reales.")

    end

end

a = 1
b = -3
c = 2
calcular_raices(a, b, c)