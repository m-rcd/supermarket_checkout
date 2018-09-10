require 'checkout'

describe Checkout do
  let (:item1){double :item,:name => 'milk', :price => 1}
  let (:item2){double :item,:name => 'bread', :price => 2}
  let (:item3){double :item,:name => 'milk', :price => 1}
  it 'scans items' do
    checkout = Checkout.new
    checkout.scan(item1)
    checkout.scan(item2)
    expect(checkout.scanned_items).to include('bread' => 2)
    expect(checkout.scanned_items).to include('milk' => 1)
  end

  it 'adds price of similar items' do
    checkout = Checkout.new
    checkout.scan(item1)
    checkout.scan(item2)
    checkout.scan(item3)
    expect(checkout.scanned_items).to include('milk' => 2, 'bread' => 2)
  end
end
