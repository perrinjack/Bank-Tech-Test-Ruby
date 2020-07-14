# frozen_string_literal: true

require_relative '../lib/transaction.rb'

describe Account do
  let(:account) { double(:account) }
  let(:transaction) { Transaction.new(100) }
  it 'transaction is an instance of the Transaction class' do
    expect(transaction).to be_instance_of Transaction
  end

  it 'has the value of the transaction' do
    expect(transaction.value).to eq 100
  end
end
