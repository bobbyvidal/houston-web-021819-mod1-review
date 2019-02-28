class Customer

    attr_accessor :name, :account_type
    @@all = []

    def initialize(name: , account_type: )
        self.name = name
        self.account_type = account_type
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts 
        Account.all.select do |x|
            x.customer == self
        end
    end

    def banks
        accounts.map do |x|
            x.bank
        end
    end

    def balance
        balance_array = accounts.map do |x|
            x.balance
        end
        total = 0
        balance_array.each do |x|
            total += x
        end
        total
    end
end