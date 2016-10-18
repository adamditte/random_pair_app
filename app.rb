require 'sinatra'
require_relative 'random_pair.rb'

# require_relative 'formatter.rb'





get '/' do
	erb :student_number
end

post '/number_of_students' do
	erb :get_names 
end

get '/get_names?' do
	erb :get_names
end

post '/names' do
	names = params.value
	puts params
	puts params.key
	"names = #{names}"
	# random_pairs = random_pair(names)
	# erb :get_names_again, :locals => {:random_pairs => random_pairs}
end