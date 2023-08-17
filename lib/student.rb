class Student
    attr_reader :name, :english, :math, :physics

    def initialize(name, english, math, physics)
      @name = name
      @english = english.to_f
      @math = math.to_f
      @physics = physics.to_f
    end
  
    def average
      (@english + @math + @physics) / 3.0
    end
end
