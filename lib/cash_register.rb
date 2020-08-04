require "pry"
class CashRegister
  
  attr_accessor :discount, :items, :total, :las
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_price = nil
  end
  
  def add_item(title, price ,quantity = 1)
    self.total += price * quantity
    quantity.times {self.items.push(title)}
    last_item_price = price * quantity
  end
  
  def apply_discount
    if self.discount != 0
      self.total -=  (self.total * (self.discount/100.0))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  def void_last_transaction
    self.total -= self.last_item_price
  end

end #for whole class

