module FileManagement

  class << self
    attr_accessor :args 
  end

  def self.open_file(file)
    self.args.gtk.read_file(file)

  end
  
  def self.parse_json(json)
    self.args.gtk.parse_json(json)
  end
end
