require 'item'

describe Item do
  it 'it creates a new item with its price' do
    item = Item.new('Bread',3)
    expect(item).to have_attributes(name: 'bread', price: 3)
  end

  it 'shows price of item' do
    item = Item.new('Bread',3)
    expect(item.show_price).to eq(3)
  end
end
