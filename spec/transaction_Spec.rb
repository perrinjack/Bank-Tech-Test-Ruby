# frozen_string_literal: true

require_relative '../lib/transaction.rb'

describe Account do
  let(:account) { double(:account) }
  let(:credit_transaction) { Transaction.new(100, 'credit') }
  let(:debit_transaction) { Transaction.new(-100, 'debit') }
  it 'transaction is an instance of the Transaction class' do
    expect(credit_transaction).to be_instance_of Transaction
  end

  it 'has the value of the transaction' do
    expect(credit_transaction.value).to eq 100
  end

  it 'has the value of the transaction' do
    expect(debit_transaction.value).to eq -100
  end

  it 'has the type of the transaction' do
    expect(credit_transaction.type).to eq 'credit'
  end

  it 'has the type of the transaction' do
    expect(debit_transaction.type).to eq 'debit'
  end
end
