module Bank
  class Account
    attr_reader :id, :balance

    def initialize(id, balance)
      if balance < 0
        raise ArgumentError.new('balance must be positive')
      end
      @id = id.to_f
      @balance = balance.to_f
    end

    def withdraw(withdrawal_amount)
      balance = @balance
      if withdrawal_amount < 0
        raise ArgumentError.new('withdrawl amount must be postive')
      elsif (balance - withdrawal_amount) < 0
        puts 'Withdraw amount would cause a negative balance'
      else
        @balance = balance - withdrawal_amount
      end
    end

    def deposit(deposit_amount)
      balance = @balance
      if deposit_amount < 0
        raise ArgumentError.new('deposit amount must be postive')
      end
      @balance = balance + deposit_amount
    end
  end
end
