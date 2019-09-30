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
    if @quantity == 0
      @total += @price
    else
      @total += @price * @quantity
    end
  end

  def apply_discount
    puts @discount / @total * 100.00
  end

end
