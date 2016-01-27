require 'sinatra'
require 'json'
require 'mongo'
require 'pry'

post '/gateway' do
  return {text: 'Don\'t talk to strangers'} if params[:token] != ENV['SLACK_TOKEN']
  mongo_uri = ENV['MONGOLAB_URI']
  client = Mongo::Client.new(mongo_uri);
  db = client.database
  if params[:trigger_word] == 'standup:'
    previous = client[:standup]
    previous.find(name: params[:user_name]).delete_many
    client[:standup].insert_one({ name: params[:user_name], text: params[:text].gsub(params[:trigger_word], '') })
    { text: 'Well done!' }.to_json
  elsif params[:trigger_word] == 'standup?'
    result = client[:standup].find(name: params[:user_name]).each do |info|
       info.to_json
    end
    { text: result.first['text'] }.to_json
  end
end
