class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def self.add_item(title, price, quantity = 0)
    @title = title
    @price = price
    @quantity = quantity
    @total += @price
  end
end
