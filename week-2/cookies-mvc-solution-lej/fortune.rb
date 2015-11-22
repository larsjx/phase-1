
require_relative 'cookies'

class FortuneCookie < Cookies
  attr_reader :type

  def initialize
    super(15)
    @type = "fortune"
  end
end