class Bank

    attr_accessor :name
    @@all = []

    def initialize(name: )
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def account
        Account.all.select do |x|
            x.bank == self
        end
    end

    def customers
        account.map do |x|
            x.customer
        end
    end

    def customer_names
        customers.map do |x|
            x.name
        end
    end
end