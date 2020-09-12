require_relative 'carta'
class Baraja < Carta
    attr_accessor :cartas
    def initialize()
        super
        n = 0
        @cartas = []
        while n <= 52 do
            carta = Carta.new
            @cartas.push("#{carta.numero}#{carta.pinta}")
            @cartas = @cartas.uniq
            n = @cartas.count
            n += 1
        end
        @cartas = cartas
        print @cartas
        puts
    end
    def barajar
        
    end
    def sacar
        
    end
    def repartir
        
    end
end
baraja = Baraja.new
# Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
# (1punto)
# Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta
# y guardarse dentro del arreglo cartas.
# Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle
# Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop
# (1punto)
# Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.