require_relative 'carta'
class Baraja < Carta
    attr_accessor :cartas, :sacar, :cartas_barajadas
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
        @cartas_barajadas = @cartas.shuffle
        print cartas_barajadas
        puts
    end
    def sacar
        n = 1
        n.times do
            print cartas_barajadas.pop(1)
        end
        puts
    end
    def repartir
        n=1
        n.times do
          print cartas_barajadas.pop(5)
        end
        puts
    end
end
baraja = Baraja.new
baraja.barajar
baraja.sacar
baraja.repartir

