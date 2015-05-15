
--init some model 
local redis = require 'resty.redis'
local cjson = require 'cjson'

--set global vars, not recommanded
count = 1

--set global cache memory
local shared_data = ngx.shared.shared_data
shared_data:set('count', 1)

