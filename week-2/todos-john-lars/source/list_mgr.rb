require 'csv'

require_relative 'list'
require_relative 'task'

class ListManager
  attr_accessor :list

  def initialize(filename, instructions)
    @list = parse_csv_to_list(filename)
    @filename = filename
    interpret_instructions(instructions)
  end

  def parse_csv_to_list(filename)
    tasks = []
    CSV.foreach(filename) do |row|
      tasks << Task.new(row[0], get_task_status(row))
    end
    List.new(tasks)
  end

  def get_task_status(row)
    row.length > 1 ? row[1] == "true" : false
  end

  def interpret_instructions(instructions)
    case instructions[0].downcase
      when "list"
        puts @list.to_s
      when "add"
        @list.add_task(instructions[1..-1].join(" "))
      when "delete"
        @list.remove_task(instructions[1].to_i)
      when "complete"
        @list.complete_task(instructions[1].to_i)
      when "write"
        write_to(instructions[1])
    end
    save
  end

  def save
    CSV.open(@filename, "wb") do |csv|
      @list.tasks.each do |task|
        csv << [task.description, task.status]
      end
    end
    puts "File Saved"
  end

  def write_to(filename)
    IO.write(filename, @list)
  end
end
