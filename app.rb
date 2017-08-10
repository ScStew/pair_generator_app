require "sinatra"
require_relative "pair_gen.rb"

get "/" do
 erb :name
end

post "/names" do
fname = params[:fname]
lname = params[:lname]
redirect "/input?fname=" + fname + "&lname=" + lname
end

get "/input" do
	fname = params[:fname]
	lname = params[:lname]
erb :input, local:[fname:fname, lname:lname]
end

post "/pair" do
	pairs = params.values
	product = random_pair(pairs)
	names = array_smasher(product)
	p "#{names}"
end