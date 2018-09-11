require 'item'

describe Item do
  context 'testing #initialize method' do
    it 'it creates a new item with its price' do
      item = Item.new('Bread',3)
      expect(item).to have_attributes(name: 'bread', price: 3)
    end
  end

  context 'testing #show method' do
    it 'shows price of item' do
      item = Item.new('Bread',3)
      expect(item.show_price).to eq(3)
    end
  end
end
