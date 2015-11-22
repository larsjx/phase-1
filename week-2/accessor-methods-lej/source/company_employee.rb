class Company

  def initialize(name)
    @company_name  = name
    @employees   = []
  end

  def company_name
    @company_name
  end

  def company_name=(new_name)
    @company_name = new_name
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end
end


class Employee

  def initialize(name, position)
    @name     = name
    @position = position
    @id       = rand(100_000_000).to_s.insert(2, '-').insert(6, '-')
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def position
    @position
  end

  def position=(new_position)
    @position = new_position
  end

  def id
    @id
  end
end

