class Datastore

  attr_reader :somehash

  def initialize
      @somehash = {}
  end

  def add(k,v)
    somehash[k] = v
  end

  def rtn(k)
    v = somehash[k] if key_exists?(k)
  end

  def key_exists?(k)
    somehash[k] != nil
  end
end
