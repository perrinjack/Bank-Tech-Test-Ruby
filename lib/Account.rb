# frozen_string_literal: true

class Account
  attr_reader :transactions, :balance
  def initialize
    @transactions = []
    @balance = 0
end

def credit(amount)
    @balance += amount
end


end
