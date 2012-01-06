require 'rubygems'
require 'sinatra'

set :public, Proc.new { File.join(root, "_site") }

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
#before do
#  response.headers['Cache-Control'] = 'public, max-age=86400'
#end

get '/' do
  File.read('user_interaction_testing/index.html')
end

#get '/user_interaction_testing' do
#  File.read('user_interaction_testing/index.html')
#end

get '/:path' do
  return File.read("/#{params[:path]}")
end

#get '/user_interaction_testing/:file' do
#  return File.read("/user_interaction_testing/#{params[:file]}")
end