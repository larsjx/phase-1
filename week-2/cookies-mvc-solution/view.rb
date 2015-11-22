
require_relative 'reset_screen'

class View
  attr_reader :batch

  def View.display_cookie_list
    reset_screen
    puts Cookies.list
  end

  def View.set_batch_type
     case gets.chomp.to_i
      when 1
        @batch = FortuneCookie.new
      when 2
        @batch = OatmealCookie.new
    end
  end

  def View.set_timer
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