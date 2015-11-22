require_relative 'reset_screen'

class View

  def View.display_cookie_list
    puts Cookies.list
  end

  def View.get_timer
    print "Set timer in minutes: "
    gets.chomp.to_i
  end

  def View.display_cook_status(time_in_oven, doneness)
    reset_screen
    puts "Time: #{time_in_oven} –> #{doneness}"
    sleep(0.2)
  end

  def View.display_result(type, doneness)
    puts "Your #{type} cookies are #{doneness}"
  end

end