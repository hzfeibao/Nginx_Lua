
--response header
ngx.header.a = '1'
ngx.header.b = {'2', '3'}
--response out
ngx.say('a', 'b', '<br/>')
ngx.print('c', 'd', '<br/>')
--200 status code
return ngx.exit(200)

