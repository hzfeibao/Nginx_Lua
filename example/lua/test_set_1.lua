
local uri_args = ngx.req.get_uri_args()
local i = uri_args['i'] or 1
local j = uri_args['j'] or 2

return i+j
