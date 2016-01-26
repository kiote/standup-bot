require 'sinatra'
require 'json'

post '/gateway' do
  {text: "Hello Human!"}.to_json
end
