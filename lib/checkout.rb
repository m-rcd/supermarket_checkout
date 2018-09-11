class Checkout
  TOTAL = 0
  attr_reader :scanned_items

  def initialize(total = TOTAL)
    @scanned_items = {}
    @total = total
  end

  def scan(item)
    if scanned_items.include?(item.name)
      scanned_items[item.name] += item.price
    else
      scanned_items.store(item.name, item.price)
    end
  end

  def total
    scanned_items.map { |k, v| @total += v }
    total = sprintf('£%.2f', @total )
  end
end
