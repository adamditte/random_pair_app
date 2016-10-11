require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'

get '/' do
    erb :student_number
end

post '/number' do
	number = params[:student_number]
	redirect '/names?input_name=' + number
	erb :get_names, :locals => {:student_number => number}
end

get '/names' do
	erb :get_names
end

post '/names' do
    names = params[:user_names].split.map(&:capitalize).join(' ')
    random_names_array = randomizer(names)
    name_pairs = fix(random_names_array)
    erb :get_names_again, :locals => {:name_pairs => name_pairs}
end