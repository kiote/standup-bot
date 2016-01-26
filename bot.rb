require 'sinatra'
require 'json'

post '/gateway' do
  return {text: 'Don\'t talk to strangers'} if params[:token] != ENV['SLACK_TOKEN']
  {text: "Hello Human!"}.to_json
end
