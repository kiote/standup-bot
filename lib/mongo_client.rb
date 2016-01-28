require 'mongo'

class MongoClient
  attr_reader = :client

  def initialize(params)
    @client = Mongo::Client.new(ENV['MONGOLAB_URI'])
    @params = params
  end

  def remove_previous_standups
    previous = @client[:standup]
    previous.find(name: @params[:user_name]).delete_many
  end

  def insert_recent_standup
    @client[:standup].insert_one({ name: @params[:user_name], text: @params[:text].gsub(@params[:trigger_word], '') })
  end

  def resent_standups
    result = @client[:standup].find().inject([]) { |result, standup| result << standup }
    text = result.inject([]) { |text, one_standup| text << "*#{one_standup['name']}*: #{one_standup['text']}" }
    spacer = "\n\n\n-------------\n\n\n"
    text * spacer
  end
end
