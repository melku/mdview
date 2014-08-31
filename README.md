# mdview.rb

A small web server to render and navigate Markdown pages in a directory.

## Usage

~~~
cd path/to/markdown_files_folder
ruby path/to/mdview.rb
~~~

Execute the script inside the folder where your Markdown files lie. The script
will try to load `index.md`, and serve it at the address
[http://localhost:4567]() by default. If `index.md` doesn't exist, you can pass
the start page as a parameter.

This web server is based on [Sinatra](http://www.sinatrarb.com/). You can view the
possible options (change address, port) with `--help`.

## Installation

You first have to install the dependencies. You can use Bundler, or install the
required gems manually.

### With Bundler

Install bundler if you haven't already, and execute `bundle install` from the script
directory.

### Manually

Install the following gems:

~~~
gem install sinatra
gem install rdiscount
~~~

### *Windows-Only* Standalone version

I used ocra to compile a standalone version which you can find in the downloads.
