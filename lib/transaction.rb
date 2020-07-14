class Transaction
    
    attr_reader :value , :type
    def initialize(amount, type)
        @value = amount
        @type = type
    end
  end