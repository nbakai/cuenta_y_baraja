class Carta
    attr_accessor :numero, :pinta

    def initialize()
        @numero = rand(1..13)
        @pinta = ['C', 'D','E','T']
        @pinta = pinta.sample
    end
   
end




# n=5
# arr = []
# n.times do
#     carta = Carta.new
#     arr.push("#{carta.numero}#{carta.pinta}")
# end

# print arr 
# puts