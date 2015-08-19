local md = load('markdown.lua')
local domain = request.query.d
local response = http.request {
	url = 'http://'..domain
}
local response_html = markdown(response)
return response_html, {["Cache-Control"]="no-cache", ["Content-Type"]="text/html"}
