###
    srvr/apihack.coffee

   	run "coffee apiHack" to start apihack server
    port to listen to is set by env var APIHACK_PORT (default 8080)
###

http  = require 'http'
url   = require 'url'
path  = require 'path'
send  = require 'send'

index = require './index'

srvr = http.createServer (req, res) ->

	console.log 'ah: req.url', req.url

	err = (msg) ->
		console.log "\nERROR apiHack: #{msg}\n"
		res.writeHead 404, "Content-Type": "text/plain"
		res.end msg

	if req.method is 'GET'
		if req.url is '/favicon.ico'
			send(req, req.url)
				.from(path.join __dirname, '../../images')
				.on('error', (error) -> err "Error sending favicon:\n#{error.message}")
				.pipe res
			return

		topDir = url.parse(req.url, yes).pathname.split('/')[1]

		if topDir in ['images', 'css', 'js']
			send(req, req.url)
				.from(path.join __dirname, '../..')
				.on('error', (error) ->
					err "Error sending file: #{decodeURI req.url}\n#{error.message}")
				.pipe res
			return

		res.writeHead 200, "Content-Type": "text/html"
		res.end index.html

	if req.method is 'POST'
		res.end ''

srvr.listen +process.env.APIHACK_PORT or 8080
