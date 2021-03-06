require 'sinatra'
require 'json'
require_relative 'lib/mongo_client'
require_relative 'lib/cheers_up'

def respond_with(obj)
  obj.to_json
end

post '/gateway' do
  return {text: 'Don\'t talk to strangers'} if params[:token] != ENV['SLACK_TOKEN']
  client = MongoClient.new(params)
  trigger = params[:trigger_word].downcase

  if trigger == 'standup:'
    client.remove_previous_standups
    client.insert_recent_standup
    respond_with CheersUp.greet
  elsif trigger == 'standup?'
    respond_with(text: client.resent_standups)
  end
end
