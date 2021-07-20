class Person
  attr_accessor :name
  # attr_reader :name
  # attr_writer :name
  def initialize(name)
    @name = name
  end
  # def name
  #   @name
  # end
  # def name=(name)
  #   @name = name
  # end

end

p = Person.new('Jon Bon Jovi')
puts p.name
p.name = "New Name"
puts p.name
