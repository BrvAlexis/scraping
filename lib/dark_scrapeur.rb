require 'rubygems'
require 'nokogiri'
require 'open-uri'



page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))


wallet = Hash.new

tbody = page.xpath('//table/tbody')
	  
tbody.search('tr').each do |row|
        currency = row.xpath('.//td[3]').text
        price = row.xpath('.//td[4]').text

    wallet[currency] = price
       
end

puts wallet

	