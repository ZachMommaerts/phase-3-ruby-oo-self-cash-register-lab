class CashRegister
    attr_accessor :total, :employee_discount

    def initialize(employee_discount = false)
        @total = 0
        @employee_discount = employee_discount
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount()
end
