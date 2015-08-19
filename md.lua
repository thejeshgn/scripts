local md = require('markdown.lua')
local domain = request.query.d
local response = http.request {url = 'http://'..domain}
--if response == nil or response.statuscode ~= 200 then
--  return "Markdown was not found", {["Cache-Control"]="no-cache", ["Content-Type"]="text/html"}
--end
local response_html = markdown(response.content)
return response_html, {["Cache-Control"]="no-cache", ["Content-Type"]="text/html"}
