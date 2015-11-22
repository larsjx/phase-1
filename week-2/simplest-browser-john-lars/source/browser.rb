require 'net/http'
require 'nokogiri'
require 'uri'

require_relative 'page'

class Browser
  attr_reader :page
  def initialize(page)
    @page = page
  end

  def get_url_input
    print "\n URL: "
    input = gets.chomp.downcase
  end

  def url_valid?(url)
    url[0..6] == "http://" && url[0..7] == "https://"
  end

  def prepend_url(url)
    "https://www.#{url}.com"
  end

  def parse_user_input(input)
    url = input
    url = prepend_url(url) unless url_valid?(url)
  end

  def fetch_web_page(url)
    uri = URI.parse(parse_user_input(url))
    Net::HTTP.get(URI(uri))
  end

  def parse_web_page(url)
    nokogiri = Nokogiri.parse(fetch_web_page(url))
    title = nokogiri.css("title").inner_text
    links = nokogiri.css("a[href]")
    @page = Page.new(title, links)
  end

  def to_s
    "\nTitle: #{@page.title}\n\n" + @page.links_to_string
  end

  # Your "driver code"
  def run!
    input = get_url_input
    while input != "q"
      parse_web_page(input)
      puts to_s
      input = get_url_input
    end
  end

  # visit_url should take a URL and return a Page object
  def visit_url(url)
  end
end

# Browser.new.run!
browser = Browser.new(nil)
browser.run!


# Displaying a prompt for the user
# Parsing user input
# Fetching a web page
# Extracting the relevant information from the web page
# Displaying the relevant information in a user-friendly way
