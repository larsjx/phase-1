require 'csv'

class List

  def initialize(filename)
    @filename = filename
    @list = []
  end

  def load_list
    CSV.foreach(@filename) do | row |
      add_list_item(row[0])
    end
  end

  def add_list_item(item)
    @list << ListItem.new(item)
  end

  def get_new_list_item
    print "Enter list item to be added: "
    add_list_item(gets.chomp)
  end

  def get_item_to_delete
    print "Enter item number to be removed: "
    @list.delete_at(gets.chomp.to_i-1)
  end

  def delete_list_item
  end

  def change_list_item_status
    print "Enter item number to toggle status: "
      status_item = gets.chomp.to_i-1
      if @list[status_item].status == true
        @list[status_item].status = false
      else
        @list[status_item].status = true
      end
  end

  def to_s
    @list.each_with_index do |item, index|
      puts "#{index+1}. #{"X" if item.status}   #{item.description}"
    end
  end

end

class ListItem
  attr_reader :description
  attr_accessor :status

  def initialize(item)
    @description = item
    @status = false
  end

end

test = List.new("todo.csv")
test.load_list
test.to_s
test.get_new_list_item
test.to_s
test.get_item_to_delete
test.to_s
test.change_list_item_status
test.to_s