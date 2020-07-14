# frozen_string_literal: true

require 'date'
require_relative '../lib/transaction.rb'

describe Transaction do
  before(:each) do
    @time_now = Time.now
    allow(Time).to receive(:now).and_return(@time_now)
  end

  let(:credit_transaction) { Transaction.new(100, 'credit', 200) }
  let(:debit_transaction) { Transaction.new(-100, 'debit', 200) }

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

  it 'has a date of the transaction' do
    expect(debit_transaction.date).to eq @time_now.strftime('%d/%m/%Y')
  end
end
