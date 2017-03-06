class KeyValue

  attr_reader :pairs

  def self.create(key, val)
    @key_val = KeyValue.new(key, val)
  end

  def self.instance
    @key_val
  end

  def initialize(key, val)
    @pairs = {}
    @pairs[key] = val
  end

  def add_pair(key, val)
    @pairs[key] = val
  end

end
