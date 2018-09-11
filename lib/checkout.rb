class Checkout
  TOTAL = 0
  attr_reader :scanned_items, :total

  def initialize(total = TOTAL)
    @scanned_items = {}
    @total = total
  end

  def scan(item)
    if @scanned_items.include?(item.name)
      @scanned_items[item.name] = 2 * item.price
    else
      @scanned_items.store(item.name, item.price)
    end
  end

  def total
    @scanned_items.map { |k, v| @total += v }
    @total
  end
end
