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
    @transactions.push(Transaction.new(amount, 'credit', @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push(Transaction.new(amount, 'debit', @balance))
  end

  def print_statement
    @statement = Statement.new(@transactions)
  end
end
