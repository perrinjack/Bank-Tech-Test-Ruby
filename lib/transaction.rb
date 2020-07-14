# frozen_string_literal: true

require 'date'
class Transaction
  attr_reader :value, :type, :date
  def initialize(amount, type, post_transaction_balance)
    @value = amount
    @type = type
    @post_transaction_balance = post_transaction_balance
    @date = Time.now.strftime('%d/%m/%Y')
  end
  end
