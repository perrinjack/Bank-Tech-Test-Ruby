# frozen_string_literal: true

require_relative '../lib/statement.rb'

describe Statement do
  let(:transaction1) { double(:Transaction) }
  let(:transaction2) { double(:Transaction) }
  let(:statement) { Statement.new([transaction1, transaction2]) }

  it 'Statement.new creates instance of an statement' do
    expect(statement).to be_instance_of Statement
  end

  it 'Statement has a list of transactions that have occurred' do
    expect(statement.transactions.length).to eq 2
  end

  it 'print statement returns statement' do
    allow(transaction1).to receive(:value).and_return(100)
    allow(transaction1).to receive(:type).and_return('credit')
    allow(transaction1).to receive(:post_transaction_balance).and_return(100)
    allow(transaction1).to receive(:date).and_return('15/10/2020')
    allow(transaction2).to receive(:value).and_return(50)
    allow(transaction2).to receive(:type).and_return('debit')
    allow(transaction2).to receive(:post_transaction_balance).and_return(50)
    allow(transaction2).to receive(:date).and_return('15/10/2020')
    expect(statement.print_statement).to eq "date || credit || debit || balance \n15/10/2020 || 100 || || 100\n15/10/2020 || || 50 || 50\n"
  end
end
