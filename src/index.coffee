###
    index.coffee
	html for initial page load
###

{doctype, html, head, title, body, div, script} = dk = require('drykup')  expand: yes

doctype 5

html ->
	head ->
		title "API Hack"
	body ->
		div x:"i=viewStack w:100% h:100% b:1px+solid+red"

		cloud = "http://cdnjs.cloudflare.com/ajax/libs/"

		script src: "#{cloud}jquery/1.8.3/jquery.min.js"
		script src: "#{cloud}underscore.js/1.4.2/underscore-min.js"
		script src: "#{cloud}backbone.js/0.9.2/backbone-min.js"


exports.html = dk.htmlOut
