local md = require('markdown.lua')
local d = request.query.d
local response = http.request {
	url = 'http://'..d
}

local response_html = markdown(response)
return response_html, {["Cache-Control"]="no-cache", ["Content-Type"]="text/html"}
