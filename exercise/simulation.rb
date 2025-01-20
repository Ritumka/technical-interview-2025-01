require_relative 'coffee_shop'

shop = CoffeeShop.new

puts "☕ Welcome to Inventory Java Haven!"

shop.place_order("latte", "medium")

shop.fulfill_orders
