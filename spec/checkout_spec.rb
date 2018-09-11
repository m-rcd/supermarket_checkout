require 'checkout'

describe Checkout do
  let (:item1){double :item,:name => 'milk', :price => 1}
  let (:item2){double :item,:name => 'bread', :price => 2}
  let (:item3){double :item,:name => 'milk', :price => 1}

  context 'testing #scan method' do
    it 'scans items' do
      checkout = Checkout.new
      checkout.scan(item1)
      checkout.scan(item2)
      expect(checkout.scanned_items).to include('bread' => 2)
      expect(checkout.scanned_items).to include('milk' => 1)
    end
  end

  it 'adds price of similar items' do
    checkout = Checkout.new
    checkout.scan(item1)
    checkout.scan(item2)
    checkout.scan(item3)
    expect(checkout.scanned_items).to include('milk' => 2, 'bread' => 2)
  end

  it 'gets total for all scanned items' do
    checkout = Checkout.new
    checkout.scan(item1)
    checkout.scan(item2)
    checkout.scan(item3)
    expect(checkout.total).to eq('£4.00')
  end
end
