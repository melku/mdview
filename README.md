# mdview.rb

### Usage

Execute the script inside the folder where your Markdown files lie. The script
will try to load `index.md`, and serve it at the address
[http://localhost:4567][] by default. If `index.md` doesn't exist, you can pass
the start page as a parameter.

This web server is based on [Sinatra](http://www.sinatrarb.com/). Pass `--help`
as parameters to know the available options.
