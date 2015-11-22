
require_relative 'cookies'

class OatmealCookie < Cookies
  attr_reader :type

  def initialize
    super(30)
    @type = "oatmeal"
  end
end