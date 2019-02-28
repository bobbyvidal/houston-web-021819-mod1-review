class Account

    attr_accessor :customer, :bank , :balance 
    @@all = []

    def initialize(customer: , bank: , balance: )
        self.customer = customer
        self.bank = bank
        self.balance = balance
        @@all << self
    end

    def self.all
        @@all
    end
    











end