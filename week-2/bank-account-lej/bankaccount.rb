class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
  end

  def add_transaction
    @transactions.push(category: @category, amount: @amount)
  end

  def credit(category, amount)
    @category = category
    @amount = amount
    add_transaction
  end

  def debit(category, amount)
    @category = category
    @amount = amount *-1
    add_transaction
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    balance
  end

  def to_s
    "Name: #{name}, Balance: #{balance}"
  end

  def print_register
    @transactions.each do |transaction|
      puts "#{transaction[:category]}: #{transaction[:amount]}\n"
    end
  end

end

acct = BankAccount.new("Lars Johnson")
acct.credit("Paycheck", 100)
acct.debit("Groceries", 40)
acct.debit("Video Game", 40)
acct.balance
acct.print_register
puts acct

