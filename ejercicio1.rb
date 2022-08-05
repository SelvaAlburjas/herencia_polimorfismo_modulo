=begin Ejercicio1
Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para
eliminar la innecesaria cantidad de sentencias if en los métodos ask e introduce. (3 Puntos )


class Person
    def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
    end
    def birthday
    @age += 1
    end
    def talk
    if @type == "Student"
    puts "Aquí es la clase de programación con Ruby?"
    elsif @type == "Teacher"
    puts "Bienvenidos a la clase de programación con Ruby!"
    elsif @type == "Parent"
    puts "Aquí es la reunión de apoderados?"
    end
    end
    def introduce
    if @type == "Student"
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == "Teacher"
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == "Parent"
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
    #{@last_name}."
    end
    end
    end
=end    


class Person
  attr_accessor :first, :last, :age, :type

  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end

  def birthday
    @age += 1
  end

  def talk
    fail NotImplementedError
  end

  def introduce
    fail NotImplementedError
  end
end

class Student < Person
  def initialize(first, last, age)
    @type = "Student"
    super(first, last, age, @type)
  end

  def talk
    puts "Aquí es la clase de programación con Ruby?"
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Teacher < Person
  def initialize(first, last, age)
    @type = "Teacher"
    super(first, last, age, @type)
  end

  def talk
    puts "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  def initialize(first, last, age)
    @type = "Parent"
    super(first, last, age, @type)
  end

  def talk
    puts "Aquí es la reunión de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

persona1 = Parent.new("Selva", "Alburjas", 41)
persona2 = Student.new("Cesar", "Jorge", 9)
persona3 = Teacher.new("Carolina", "Gandara", 45)

persona1.talk()
persona2.talk()
persona3.talk()

persona1.introduce()
persona2.introduce()
persona3.introduce()
    