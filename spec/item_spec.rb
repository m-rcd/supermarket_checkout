require 'item'

describe Item do
  context 'testing #show method' do
    it 'shows price of item' do
      item = Item.new('Bread',3)
      expect(item.show_price).to eq('£3.00')
    end
  end
end
