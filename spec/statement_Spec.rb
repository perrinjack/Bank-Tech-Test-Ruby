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
end
