module HelperFunctions 
  class << self
    attr_accessor :args
  end

  def self.key_pressed(key_action, key, output)
    if self.args.inputs.keyboard.send(key_action).send(key)
      output.call
    end
  end

  def self.draw_single_solid(object)
    self.args.outputs.solids << object
  end

  def self.draw_multiple_solids(array)
    array.each do |element|
      self.args.outputs.solids << element
    end
  end

  def draw_text_single_line(text)
    @args.outputs.labels << text
  end

end