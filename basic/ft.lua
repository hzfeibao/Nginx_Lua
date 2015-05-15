#!/usr/local/bin/lua

function producer()
    while true do
	local x = io.read()
	send(x)
    end
end

function consumer()
    while true do
	local x = receive()
	io.write(x, "\n")
    end
end

function receive()
    local status, value=coroutine.resume(producer)
    return value
end

function send()
    coroutine.yield(x)
end

producer = coroutine.create(function()
    while true do
	local x = io.read()
	send(x)
    end
end)