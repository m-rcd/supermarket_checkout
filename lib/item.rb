class Item

  attr_reader :price, :name

  def initialize(name, price)
    @name = name.downcase
    @price = price
  end

  def show_price
    sprintf('£%.2f', price )
  end
end
