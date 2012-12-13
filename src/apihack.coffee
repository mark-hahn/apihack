###
    Main node app for apiHack
    node apiHack
###

http  = require 'http'
url   = require 'url'
path  = require 'path'
send  = require 'send'

index = require './index'

srvr = http.createServer (req, res) ->

	console.log 'ah: req.url', req.url

	{pathname} = url.parse req.url, yes
	topDir = pathname.split('/')[1]

	if req.url is '/favicon.ico'
		send(req, req.url).from(path.join __dirname, '..', 'images').pipe(res)
		return

	if topDir = 'images'
		send(req, req.url).from(path.join __dirname, '..').pipe(res)
		return

	res.writeHead 200, "Content-Type": "text/html"
	res.end index.html

srvr.listen 8080, "127.0.0.1"
