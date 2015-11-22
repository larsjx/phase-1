require_relative('list_mgr')

# Commands:
# => add (new task): Adds a new task to todo list
# => delete (task number): deletes task at specific point in list
# => list: lists all tasks
# => write (filename): saves list to a new file (e.g., list.txt)

controller = ListManager.new("todo.csv", ARGV)

