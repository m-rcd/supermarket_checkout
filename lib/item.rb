class Item
  attr_reader :price, :name

  def initialize(name, price)
    @name = name.downcase
    @price = price
  end

  def show_price
    @price
  end
end
