class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 0)
    @title = title
    @price = price
    @quantity = quantity
    @total += @price(*quantity)
  end
end
