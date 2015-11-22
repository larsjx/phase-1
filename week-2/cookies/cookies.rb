
class Cookies

  def initialize(time)
    @time_in_oven = 0
    @optimal_time = time
  end

  def Cookies.list
    ["1. Fortune", "2. Oatmeal"]
  end

  def doneness(time_in_oven)
    if time_in_oven > @optimal_time * 1.1
      "burnt"
    elsif time_in_oven >= @optimal_time * 0.95
      "beautifully done"
    elsif time_in_oven > @optimal_time * 0.7
      "almost ready"
    elsif time_in_oven <= @optimal_time * 0.7
      "doughy"
    end
  end

end