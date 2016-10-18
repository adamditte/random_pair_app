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
	names = params.values # and this calls the value out of the hash it creates
	puts params
	results = random_pair(names)
	"The random pairs have been selected. #{results}"

end