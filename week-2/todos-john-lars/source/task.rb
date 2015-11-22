class Task
  attr_reader :description
  attr_accessor :status

  def initialize(description, status = false)
    @description = description
    @status = status
  end

  def to_s
    "[#{'√' if status}] #{description}"
  end
end
