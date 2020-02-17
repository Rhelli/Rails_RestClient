require 'rest-client'

def get_keywords
  string = "What would you like to search for? "
  string.each_char do |i|
    print i
    sleep(0.03)
  end
  sleep(1)
  @keywords = gets.chomp
end

def ellipsis
  8.times do
    sleep(0.4)
    print "."
  end
end

def search(get_keywords)
  url = 'https://www.bing.com/search?q='
  @response = RestClient.get(url + "#{get_keywords}")
  ellipsis
  puts
  puts @response.code
  sleep(2)
  puts @response.cookies
  sleep(2)
  puts @response.headers
  sleep(2)
  puts @response.body
  sleep(2)
  string = 'Congratulations! Here are your web results!'
  string.each_char do |i| 
    print i
    sleep(0.02)
  end
  sleep(1)
  puts
end

search(get_keywords)
