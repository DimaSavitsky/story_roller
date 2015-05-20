Game.define_method :new_method do
  :new
end

def second_new_method
  :second
end

method(:second_new_method).call

