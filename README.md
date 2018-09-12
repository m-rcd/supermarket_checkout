# Supermarket Checkout

Getting started
---
1. Clone repository
2. Run `Bundle install`
3. Run `RSpec` to test code
1. Run `rubocop` to check syntax


Tasks
---
```
Write the code for a supermarket checkout that can calculate the price of a number of items. Each item should be priced individually, and the checkout should be able to scan them in any order.

The requirements for the system are as follows:

As a shopper
So I know how much an item costs
I would like to be able to see its price

As a shopper
So that I can buy an item
I would like to be able to scan items at the checkout

As a shopper
So that I know how much to pay
I would like to be able to see a total for all scanned items

As a shopper
So that I know how much to pay
I would like to see all prices correctly formatted (£xx.xx)
```

How my app would look like from a user perspective:
---
```rb
[1] pry(main)> require './lib/checkout.rb'
=> true
[2] pry(main)> require './lib/item.rb'
=> true
[3] pry(main)> checkout = Checkout.new
=> #<Checkout:0x00007fa8ff99d798 @scanned_items={}, @total=0>
[4] pry(main)> item1 = Item.new('bread', 2)
=> #<Item:0x00007fa8ff9933d8 @name="bread", @price=2>
[5] pry(main)> item1.show_price
=> "£2.00"
[6] pry(main)> item2 = Item.new('milk', 1)
=> #<Item:0x00007fa8ff958e90 @name="milk", @price=1>
[7] pry(main)> item2.show_price
=> "£1.00"
[8] pry(main)> item3 = Item.new('bread', 2)
=> #<Item:0x00007fa8ff908580 @name="bread", @price=2>
[9] pry(main)> item3.show_price
=> "£2.00"
[10] pry(main)> checkout.scan(item1)
=> 2
[11] pry(main)> checkout.scan(item2)
=> 1
[12] pry(main)> checkout.scan(item3)
=> 4
[13] pry(main)> checkout.scanned_items
=> {"bread"=>4, "milk"=>1}
[14] pry(main)> checkout.total
=> "£5.00"
```
