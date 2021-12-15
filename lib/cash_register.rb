class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
      end

    def add_item(title, price, quantity = 1)
        @last_transaction = price
        self.total += price * quantity
        quantity.times {|item| self.items << title}
    end

    def apply_discount()
        if discount > 0 
            self.total = self.total - (self.total * (discount/100).to_f)
            "After the discount, the total comes to #{self.total}."
        else
            'There is no discount to apply.'
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end

end
