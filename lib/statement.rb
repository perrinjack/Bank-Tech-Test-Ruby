# frozen_string_literal: true

class Statement
  attr_reader :transactions
  def initialize(transactions)
    @transactions = transactions
  end

  def prepare_header
    'date || credit || debit || balance \n'
  end

  def print_statement
    prepare_header + prepare_body.join
  end

  def prepare_body
    @transactions.map do |transaction|
      filter(transaction)
    end
  end

  def filter(transaction)
    if transaction.type == 'credit'
      "#{transaction.date} || #{transaction.value} || || #{transaction.post_transaction_balance}\n"
    else
      "#{transaction.date} || || #{transaction.value} || #{transaction.post_transaction_balance}\n"
    end
  end
end
