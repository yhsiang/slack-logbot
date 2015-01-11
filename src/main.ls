require! <[ request ]>
WebSocket = require 'ws'

rtm-url = 'https://slack.com/api/rtm.start'
token = process.env.TOKEN

err, res, body <- request.get "#{rtm-url}?token=#{token}"

{url} = JSON.parse res.body


ws = new WebSocket url

ws.on 'message' ->
  console.log it

