class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
  end

  def add_transaction
    @transactions.push(description: @description, amount: @amount)
  end

  def credit(description, amount)
    @description = description
    @amount = amount
    add_transaction
  end

  def debit(description, amount)
    @description = description
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
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 40

    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end

    puts "-" * 40
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
    puts "-" * 40
  end

end

acct = BankAccount.new("Lars Johnson")
acct.credit("Paycheck", 100)
acct.debit("Groceries", 40)
acct.debit("Video Game", 40)
acct.balance
acct.print_register

