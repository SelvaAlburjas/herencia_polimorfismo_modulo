=begin
Ejercicio 2
● Crear la clase Animal con un atributo nombre. Agregar un método getter para el
atributo nombre. (1 Punto)
● Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
● Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
● Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
● Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
● Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo
de definir las habilidades y tipo de alimentación de cada animal. (2 Puntos)
=end
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end  

class Animal
    attr_reader :nombre
    def initialize(nombre)
      @nombre = nombre
    end
  end
  
  class Ave < Animal
  end
  
  class Mamifero < Animal
  end
  
  class Insecto < Animal
  end
  
  class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
  end
  
  class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Carnivoro
  end
  
  class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  end
  
  class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  end
  
  
  animal1 = Ave.new("canario")
  animal2 = Mamifero.new("ornitorrinco")
  animal3 = Insecto.new("abeja")
  
  puts animal1.nombre
  puts animal2.nombre
  puts animal3.nombre
  
  
  