local md = require('markdown.lua')
local d = request.query.d
local response_html = markdown(d)
return response_html, {["Cache-Control"]="no-cache", ["Content-Type"]="text/html"}
