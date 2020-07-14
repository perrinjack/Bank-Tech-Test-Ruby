# frozen_string_literal: true

class Statement
  attr_reader :transactions
  def initialize(transactions)
    @transactions = transactions
  end

  def prepare_header
    return 'date || credit || debit || balance'
  end

  
end
