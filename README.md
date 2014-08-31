# MDWeb

### Usage

Execute the script inside the folder where lie your Markdown files. The script
will try to load `index.md`, and serve it at the address
[http://localhost:4567][] by default. If `index.md` doesn't exist, you can pass
the start page as a parameter.

This web server is based on [Sinatra](http://www.sinatrarb.com/). You can use
the same parameters to change the server address and port.
