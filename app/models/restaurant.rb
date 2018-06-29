class Restaurant < ApplicationRecord

  belongs_to :nation
  belongs_to :neighborhood



  API_KEY = nil


  #


  # Constants, do not change these
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


  DEFAULT_BUSINESS_ID = "yelp-new-york"
  DEFAULT_TERM = "Pizza"
  DEFAULT_LOCATION = "New York, NY"
  SEARCH_LIMIT = 5

  def self.search(term, location)
    url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: term,
      location: location,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
    response.parse
  end

  def self.business(business_id)
    url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}"

    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    response.parse
  end


  # options = {}
  # OptionParser.new do |opts|
  #   opts.banner = "Example usage: ruby sample.rb (search|lookup) [options]"
  #
  #   opts.on("-tTERM", "--term=TERM", "Search term (for search)") do |term|
  #     options[:term] = term
  #   end
  #
  #   opts.on("-lLOCATION", "--location=LOCATION", "Search location (for search)") do |location|
  #     options[:location] = location
  #   end
  #
  #   opts.on("-bBUSINESS_ID", "--business-id=BUSINESS_ID", "Business id (for lookup)") do |id|
  #     options[:business_id] = id
  #   end
  #
  #   opts.on("-h", "--help", "Prints this help") do
  #     puts opts
  #     exit
  #   end
  # end.parse!


  # command = ARGV
  #
  #
  # case command.first
  # when "search"
  #   term = options.fetch(:term, DEFAULT_TERM)
  #   location = options.fetch(:location, DEFAULT_LOCATION)
  #
  #   raise "business_id is not a valid parameter for searching" if options.key?(:business_id)
  #
  #   response = search(term, location)
  #
  #   puts "Found #{response["total"]} businesses. Listing #{SEARCH_LIMIT}:"
  #   response["businesses"].each {|biz| puts biz["name"]}
  # when "lookup"
  #   business_id = options.fetch(:business_id, DEFAULT_BUSINESS_ID)
  #
  #
  #   raise "term is not a valid parameter for lookup" if options.key?(:term)
  #   raise "location is not a valid parameter for lookup" if options.key?(:lookup)
  #
  #   response = business(business_id)
  #
  #   puts "Found business with id #{business_id}:"
  #   puts JSON.pretty_generate(response)
  # else
  #   puts "Please specify a command: search or lookup"
  # end

end
