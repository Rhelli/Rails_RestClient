require 'rest-client'

def ellipsis
  8.times do
    sleep(0.4)
    print "."
  end
end

def typist(string)
  string.each_char do |i|
    print i
    sleep(0.03)
  end
end

def get_keywords
  typist("What would you like to search for? ")
  @keywords = gets.chomp
end

def search(get_keywords)
  url = 'https://www.bing.com/search?q='
  @response = RestClient.get(url + "#{get_keywords}")
  ellipsis
  puts
  puts @response.code
  sleep(2)
  puts '*---------------------------------------------------------------------------------------*'
  puts @response.cookies
  sleep(2)
  puts '*---------------------------------------------------------------------------------------*'
  puts @response.headers
  sleep(2)
  puts '*---------------------------------------------------------------------------------------*'
  puts @response.body
  sleep(2)
  puts '*---------------------------------------------------------------------------------------*'
  typist('Congratulations! Here are your web results!')
  puts
end

search(get_keywords)
