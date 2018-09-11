require './lib/checkout.rb'
require './lib/item.rb'

describe Supermarket do
  context 'customer uses checkout' do
    checkout = Checkout.new
    item1 = Item.new('bread', 2)
    item2 = Item.new('milk', 1)
    item3 = Item.new('bread', 2)
    item1.show_price

    checkout.scan(item1)
    checkout.scan(item2)
    checkout.scan(item3)

    checkout.scanned_items
    checkout.total
  end
end
