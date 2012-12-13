###
    srvr/index.coffee
	html for initial page load
###

{doctype, html, meta, head, title, text, body, div, script} = dk = require('drykup')  expand: yes

doctype 5

html ->
	meta "http-equiv": "Content-Type", content:"text/html; charset=UTF-8"

	head ->
		title "API Hack"

	body ->
		div x:"i=viewStack w:100% o:h", ''

		script src:'/js/apihack-browersify-bundle.js'

exports.html = dk.htmlOut
