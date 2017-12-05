class Person
  
  def initialize(name)
    @name = name
  end

  attr_reader :name

  attr_accessor :name
  
end

p = Person.new('L. Ron')
p.name = "New Namezzz"

p.name
