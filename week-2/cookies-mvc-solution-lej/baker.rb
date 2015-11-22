
require_relative 'view'
require_relative 'oven'
require_relative 'fortune.rb'
require_relative 'oatmeal.rb'

class Baker

  def initialize
    set_cookie_type
    set_timer
    bake_cookies
    remove_cookies
  end

  def set_cookie_type
    View.display_cookie_list
    @batch = View.set_batch_type
  end

  def set_timer
    @timer = View.set_timer
  end

  def bake_cookies
    @time_in_oven = 0
    while @timer > @time_in_oven
      @time_in_oven = Oven.bake(@time_in_oven)
      View.display_cook_status(@time_in_oven, @batch.doneness(@time_in_oven))
    end
  end

  def remove_cookies
    View.display_result(@batch.type, @batch.doneness(@time_in_oven))
  end

end