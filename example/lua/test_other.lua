
--origin uri
local request_uri = ngx.var.request_uri
ngx.say('request_uri: ', request_uri, '<br/>')
--decode uri
ngx.say('decode request_uri: ', ngx.unescape_uri(request_uri), '<br/>')
--MD5
ngx.say('ngx.md5: ', ngx.md5('123'), '<br/>')
--http time
ngx.say('ngx.http_time: ', ngx.http_time(ngx.time()), '<br/>')

