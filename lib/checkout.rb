class Checkout
  attr_reader :scanned_items

  def initialize
    @scanned_items = {}
  end

  def scan(item)
    if @scanned_items.include?(item.name)
      @scanned_items[item.name] = 2 * item.price
    else
      @scanned_items.store(item.name, item.price)
    end
  end
end
