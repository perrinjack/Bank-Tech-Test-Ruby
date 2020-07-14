# frozen_string_literal: true

require_relative '../lib/transaction.rb'

describe Account do
  let(:account) { double(:account) }
  let(:transaction) { Transaction.new }
  it 'transaction is an instance of the Transaction class' do
    expect(transaction).to be_instance_of Transaction
  end
end
