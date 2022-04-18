require 'open-uri'
require 'nokogiri'

### TODO:
# We need a function to scrape www.imdb.com/chart/top to get URLs
# We need to loop over those URLs and pass it to another function which will scrape that specific movie page
# We need to put the movie information into a Hash. Store all movies in an Array
# Finally, convert the Array of movies into a JSON and write a it to a file.


url = "https://www.imdb.com/chart/top"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search(".standard-card-new__article-title").each do |element|
  # puts element.text.strip
  # puts element.attribute("href").value
end

