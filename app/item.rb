class Item
  attr_accessor :name, :price

  @@all = []

  def initialize(name,price)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    puts "THE NAME IS #{name}"
    self.all.select do |item|
      item.name == name
    end.first
  end

end
