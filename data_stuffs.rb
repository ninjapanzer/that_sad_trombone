require 'sinatra'
require 'date'
require 'json'

def parse_date str
  year = str[-4,4].to_i
  month = str[0,2].to_i
  day = str[2,2].to_i
  Date.new year, month, day
end

def eighteen_years_ago
  Time.now.to_date >> -18*12
end


get '/is18/:the_date' do
  date = params[:the_date]
  current_date = parse_date date
  
  if current_date > eighteen_years_ago
    'false'
  else
    'true'
  end
end

get '/is18/:the_date/json' do

  date = params[:the_date]
  current_date = parse_date date
  
  content_type :json
  if current_date > eighteen_years_ago
    {response: false}.to_json
  else
    {response: true}.to_json
  end
end