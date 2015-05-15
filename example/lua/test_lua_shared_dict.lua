
--get global cache momory arg
local shared_data = ngx.shared.shared_data

--get dict
local i = shared_data:get('i')
if not i then
    i = 1
    --lazy
    shared_data:set('i', i)
    ngx.say('lazy set i ', i , '<br/>')
end
--increase
i = shared_data:incr('i', 1)
ngx.say('i= ', i , '<br/>')
