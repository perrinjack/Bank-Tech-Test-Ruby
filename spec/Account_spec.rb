# frozen_string_literal: true

require_relative '../lib/Account.rb'

describe Account do
let(:account) { Account.new }
  it 'Account.new creates instance of an account' do
    expect(account).to be_instance_of Account
  end
end
