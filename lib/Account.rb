# frozen_string_literal: true
require_relative '../lib/statement.rb'
require_relative '../lib/transaction.rb'
class Account
  attr_reader :transactions, :balance
  def initialize
    @transactions = []
    @balance = 0
end

  def credit(amount, money_event = Transaction  )
    @balance += amount
    @transactions.push(money_event.new(amount, 'credit', @balance))
  end

  def withdraw(amount, money_event = Transaction )
    @balance -= amount
    @transactions.push(money_event.new(amount, 'debit', @balance))
  end 

  def print_statement(statement = Statement)
    @statement = statement.new(@transactions)
    print @statement.print_statement
  end
end
