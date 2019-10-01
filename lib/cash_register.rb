class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity
  @@item_list = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@item_list.clear
  end

  def add_item(title, price, quantity = nil)
    @title = title
    @price = price
    @quantity = quantity
    @@item_list << [@title]*@quantity
    if @quantity == nil
      @total += @price
    else
      @total += @price * @quantity
    end
  end

  def apply_discount
    total_discount = @total * @discount / 100
    @total -= total_discount
    if total_discount != 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@item_list
  end

end
