require_relative 'task'

class List
  attr_reader :tasks

  def initialize(tasks)
    @tasks = tasks
  end

  def add_task(task)
    puts "Appended #{task} to your TODO list..."
    @tasks << Task.new(task)
  end

  def remove_task(task_number)
    @tasks.delete_at(task_number - 1)
  end

  def complete_task(task_number)
    @tasks[task_number - 1].status = true
  end

  def to_s
    @tasks.map do |task|
      "#{@tasks.index(task) + 1}. #{task.to_s}\n"
    end.join("")
  end
end

# Reading and writing from the todo.txt file (persisting models to non-volatile storage, aka "the hard drive")

