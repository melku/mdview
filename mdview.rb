require 'sinatra'
require 'rdiscount'

# Read markdown pages from the working directory
set :root, Dir.pwd 
set :views, settings.root

# Use the page given as argument as the start page. Use 'index.md' as default
get '/' do
  redirect '/' + ( ARGV[0] or 'index.md' )
end

# Read markdown pages
get '/:page.md' do
  markdown params[:page].to_sym
end

# Handle unknown requests
not_found do
  status 404
  pages = '<p>Page not found! Here are the pages you can try:<p><ul>'
  Dir[File.join settings.views, '*.md'].each do |file|
    pages << "<li><a href=\"#{File.basename file}\">#{File.basename file}</a></li>"
  end
  pages << '</ul>'
  erb pages
end
