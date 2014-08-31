require 'sinatra'
require 'rdiscount'

# Read markdown pages from the working directory
set :root, Dir.pwd 
set :views, settings.root

# Use the page given as argument as the start page. Use 'index.md' as default
get '/' do
  redirect '/' + ( ARGV[0] or 'index.md' )
end

# read markdown pages
get '/:page.md' do
  markdown params[:page].to_sym
end
