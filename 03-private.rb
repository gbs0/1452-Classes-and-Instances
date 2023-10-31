class User
  attr_reader :credit

  def initialize(name, credit)
    @name = name
    @credit = credit
  end

  def withdraw(value)
    remove_credit(value)
  end

  def payday(value)
    add_credit(value)
  end

  private

  def add_credit(value)
    if value.positive?
      @credit += value
    end
  end

  def remove_credit(value)
    if value.negative?
      @credit -= value
    end
  end
end

fernando = User.new("Fernando", 10_000)
fernando.withdraw(10)

puts fernando.credit
