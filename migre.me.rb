require 'simplehttp'

class UrlGrab

  def parse(url)
    @url = url
    urlRequest = "http://migre.me/api.txt?url=#{@url}";
    SimpleHttp.get urlRequest
  end
  
end

# Instance
url = UrlGrab.new

# Grab user keyboard input
puts "Type url to grab: "
input = gets

# Set input
puts "Url pasted on your clipboard! Encoded url:"
urlEncoded = url.parse(input)
IO.popen('pbcopy', 'r+') { |clipboard| clipboard.puts urlEncoded }
puts urlEncoded
