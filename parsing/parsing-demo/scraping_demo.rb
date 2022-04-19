require "open-uri"
require "nokogiri"

ingredient = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

# p html_doc.name

html_doc.search(".standard-card-new__article-title").each do |element|
  # p element
  # puts element.text.strip

  p element.attribute("href").value
  # url = "https://www.bbcgoodfood.com/search/recipes?q=#{new_url}"
  # html_file = URI.open(url).read
  # html_doc = Nokogiri::HTML(html_file)

end
