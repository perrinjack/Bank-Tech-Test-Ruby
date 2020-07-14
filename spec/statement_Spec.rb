# frozen_string_literal: true

require_relative '../lib/statement.rb'

describe Statement do
  let(:statement) { Statement.new }
  it 'Statement.new creates instance of an statement' do
    expect(statement).to be_instance_of Statement
  end
end
