require_relative './bank.rb'
require_relative './account.rb'
require_relative './customers.rb'
require 'pry'

customer1 = Customer.new(name: "bobby", account_type: "savings")
customer2 = Customer.new(name: "eli", account_type: "checking")
customer3 = Customer.new(name: "jack", account_type: "savings")

chase = Bank.new(name: "Chase")
boa = Bank.new(name: "Bank of America")

account1 = Account.new(customer: customer1, bank: chase, balance: 10)
account2 = Account.new(customer: customer2, bank: chase, balance: 15)
account3 = Account.new(customer: customer3, bank: chase, balance: 110)
account4 = Account.new(customer: customer1, bank: boa, balance: 5)

binding.pry
