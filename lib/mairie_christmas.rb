require 'rubygems'
require 'nokogiri'
require 'open-uri'


townhall_url = 'https://www.annuaire-des-mairies.com/95/avernes.html' 

def get_townhall_email(townhall_url)
    # HTML de townhall page
    page = Nokogiri::HTML(URI.open(townhall_url))
  
    # chemin email xpath
    email = page.at_xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    return email
  end
  
  email = get_townhall_email(townhall_url)
  puts "Email: #{email}"

url_valdoise = 'https://www.annuaire-des-mairies.com/val-d-oise.html'

def get_townhall_urls(url_valdoise)
    page = Nokogiri::HTML(URI.open(url_valdoise))
    
    town = page.xpath('/html/body/pre/a/@href')
    return town
end

  townhall_urls = get_townhall_urls(url_valdoise)
  puts townhall_urls






 
 

