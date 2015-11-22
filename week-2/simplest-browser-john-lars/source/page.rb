class Page
  attr_reader :title, :links
  #What should initialize take?
  def initialize(title, links)
    @title = title
    @links = links
  end

  def links_to_string
    @links.map do |link|
      "#{link.inner_text}: #{link.attributes['href'].value}"
    end.join("\n")
  end
end
