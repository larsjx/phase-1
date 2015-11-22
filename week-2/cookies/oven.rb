require_relative 'view'
require_relative 'fortune.rb'
require_relative 'oatmeal.rb'

class Oven

  def initialize
    get_cookie_type
    @timer = View.get_timer
    @time_in_oven = 0
  end

  def get_cookie_type
    View.display_cookie_list
    case gets.chomp.to_i
      when 1
        @batch = FortuneCookie.new
      when 2
        @batch = OatmealCookie.new
    end
  end

  def add_cookies(type)
  end

  def start_cooking
    while @timer > @time_in_oven
      bake
      View.display_cook_status(@time_in_oven, @batch.doneness(@time_in_oven))
    end
    remove_cookies
  end

  def bake
    @time_in_oven += 1
  end

  def remove_cookies
    View.display_result(@batch.type, @batch.doneness(@time_in_oven))
  end

end