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
	product = random_pair(pairs)
	names = array_moosher(product)
	redirect "/results?names=" +names
end

get "/results" do
	names = params[:names]
	erb :results, locals:{fname:session[:fname], lname:session[:lname], names:names}
end