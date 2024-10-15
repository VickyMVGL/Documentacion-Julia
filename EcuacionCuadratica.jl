mutable struct EcuacionCuadratica
    a::Float64
    b::Float64
    c::Float64
end

function calcular_discriminante(ecuacion::EcuacionCuadratica)
    return ecuacion.b^2 - 4 * ecuacion.a * ecuacion.c
end

function calcular_raices(ecuacion::EcuacionCuadratica)
    discriminante = calcular_discriminante(ecuacion)

    if discriminante < 0
        println("La ecuación no tiene raíces reales.")
        return nothing
    elseif discriminante == 0
        raiz = -ecuacion.b / (2 * ecuacion.a)
        println("La ecuación tiene una raíz doble: ", raiz)
    else
        raiz1 = (-ecuacion.b + sqrt(discriminante)) / (2 * ecuacion.a)
        raiz2 = (-ecuacion.b - sqrt(discriminante)) / (2 * ecuacion.a)
        println("Las raíces de la ecuación son: ", raiz1, " y ", raiz2)
    end
end

# Ejemplo de uso
ecuacion = EcuacionCuadratica(1, -5, 6)  # Ecuación x² - 5x + 6 = 0
calcular_raices(ecuacion)