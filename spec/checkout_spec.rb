require 'checkout'

describe Checkout do
  let (:item1) { double :item, :name => 'milk', :price => 1 }
  let (:item2) { double :item, :name => 'bread', :price => 2 }
  let (:item3) { double :item, :name => 'milk', :price => 1 }
  let (:checkout) { described_class.new }

  context 'testing #scan method' do
    before(:each) do
      checkout.scan(item1)
    end

    it 'scans items' do
      expect(checkout.scanned_items).to include('milk' => 1)
    end

    it 'adds price of similar items' do
      checkout.scan(item2)
      checkout.scan(item3)

      expect(checkout.scanned_items).to include('milk' => 2, 'bread' => 2)
    end
  end

  context '#total method' do
    it 'gets total for all scanned items' do
      checkout.scan(item1)
      checkout.scan(item2)
      checkout.scan(item3)

      expect(checkout.total).to eq('£4.00')
    end
  end

end
