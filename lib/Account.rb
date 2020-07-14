# frozen_string_literal: true

require_relative '../lib/transaction.rb'
class Account
  attr_reader :transactions, :balance
  def initialize
    @transactions = []
    @balance = 0
end

  def credit(amount)
    @balance += amount
    Transaction.new(amount, 'credit')
  end

  def withdraw(amount)
    @balance -= amount
    Transaction.new(amount, 'credit')
  end
end
