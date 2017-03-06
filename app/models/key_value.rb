class KeyValue

  attr_reader :pairs

  def self.create
    @key_val = KeyValue.new
  end

  def self.instance
    @key_val
  end

  def initialize
    @pairs = {}
  end

end
