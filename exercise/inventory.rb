class Inventory
  def initialize
    @supply_count = 1
  end
  
  def has_enough_supplies?(count)
    @supply_count == count
  end
  
  def use_supplies(count)
    @supply_count -= count
  end
end
