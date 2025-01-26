require_relative 'coffee'
require_relative 'inventory'

class CoffeeShop
  def initialize
    @orders = []
    @inventory = Inventory.new
  end

  def place_order(type, size)
    coffee = Coffee.new(type, size) 
    puts "📖 Placed order for a #{coffee.description}"  
    @orders << coffee 
  end

  def fulfill_orders
    puts "🔄 Fulfilling orders..."

    @orders.each do |coffee|
      if !@inventory.has_enough_supplies?(1)
        @inventory.use_supplies(1)
        puts "✅ Fulfilled order for #{coffee.description}"
      else
        puts "❌ Insuficient supplies for #{coffee.description}"
      end
    end

    @orders.clear

  end


  def clean_up
    puts "🏁 There are 0 orders remaining!"
  end
end
