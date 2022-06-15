# Crear la clase carta con los atributos numero y pinta. (1 Punto)

# Agregar los getters y setters a ambos atributos.
# Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la
# pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D',
# Espada: 'E' o Trébol: 'T'. (1 Punto)

# Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb.
# Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un
# arreglo. (1 Punto)

# Al crear una baraja (constructor) se deben generar todas las combinaciones de
# números y pinta y guardarse dentro del arreglo cartas.

# Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar
# .shuffle.

# Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar
# .pop. (1 Punto)

# Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de
# la baraja. (1 Punto)

require_relative 'carta'

class Carta
    attr_accessor :carta, :pinta
    
    def initialize(carta, pinta)
    @carta = []
    @pinta = ['C', 'D','E', 'T']

    carta.numero.each do |i|
        carta.pinta.each do |j|
          @cartas << i.to_s + j
        end
    end
end

def barajar
    @cartas.shuffle
  end 

  def sacar
    @cartas.pop
  end

  def repartir_mano
    @cartas[0..4]
  end

end

numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
pinta = ['C', 'D', 'E', 'T']

carta1 = Carta.new(numero, pinta)

baraja1 = Baraja.new(carta1)
