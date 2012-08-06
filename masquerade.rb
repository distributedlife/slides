require 'rubygems'
require 'sinatra'
require 'haml'
set :public, Proc.new { root }

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
#before do
#  response.headers['Cache-Control'] = 'public, max-age=86400'
#end

get '/' do
  File.read('user_interaction_testing/index.html')
end

get '/user_interaction_testing/' do
  File.read('user_interaction_testing/index.html')
end

get '/soap_box_early_2012/' do
  haml File.read('soap_box_early_2012/index.haml')
end

get '/js_is_the_future_of_gaming/' do
  haml File.read('js_is_the_future_of_gaming/index.haml')
end
