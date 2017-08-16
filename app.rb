require "sinatra"
require_relative "pair_gen.rb"
enable :sessions

get "/" do
	erb :name
end

post "/names" do
	session[:fname] = params[:fname]
	session[:lname] = params[:lname]
	redirect "/input?"
end

get "/input" do
	erb :input
end

post "/pair" do
	pairs = params.values
	cap = capital(pairs.flatten)
	product = random_pair(cap)
	session[:names] = array_moosher(product)
	redirect "/results?names="
end

get "/results" do
	erb :results, locals:{fname:session[:fname], lname:session[:lname], names:session[:names]}
end


post "/final_results" do
	inputs = params[:inputs]
	erb :final_outcome, locals:{inputs:inputs}
end