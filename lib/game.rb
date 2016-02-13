require 'sinatra'
require "sinatra/json"
require 'twilio-ruby'

# # put your own credentials here
# account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
# auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

# # set up a client to talk to the Twilio REST API
# @client = Twilio::REST::Client.new account_sid, auth_token

# # alternatively, you can preconfigure the client like so
# Twilio.configure do |config|
#   config.account_sid = account_sid
#   config.auth_token = auth_token
# end

# # and then you can create a new client without parameters
# @client = Twilio::REST::Client.new

# #send an sms
# @client.messages.create(
#   from: '+14159341234',
#   to: '+16105557069',
#   body: 'Hey there!'
# )

require 'rest-client'
# FROM https://github.com/rest-client/rest-client
#RestClient.get 'http://example.com/resource'

# RestClient.get 'http://example.com/resource', {:params => {:id => 50, 'foo' => 'bar'}}

# RestClient.get 'https://user:password@example.com/private/resource', {:accept => :json}

# RestClient.post 'http://example.com/resource', :param1 => 'one', :nested => { :param2 => 'two' }

# RestClient.post "http://example.com/resource", { 'x' => 1 }.to_json, :content_type => :json, :accept => :json

# RestClient.delete 'http://example.com/resource'

# response = RestClient.get 'http://example.com/resource'
# response.code
# ➔ 200
# response.cookies
# ➔ {"Foo"=>"BAR", "QUUX"=>"QUUUUX"}
# response.headers
# ➔ {:content_type=>"text/html; charset=utf-8", :cache_control=>"private" ...
# response.to_str
# ➔ \n<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n   \"http://www.w3.org/TR/html4/strict.dtd\">\n\n<html ....

# RestClient.post( url,
#   {
#     :transfer => {
#       :path => '/foo/bar',
#       :owner => 'that_guy',
#       :group => 'those_guys'
#     },
#      :upload => {
#       :file => File.new(path, 'rb')
#     }
#   })

class Game
  attr_reader :board

  def initialize
    @board = []
  end
end
