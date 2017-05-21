# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

 robot.hear /weeks events/i, (resp) ->
   http = require 'http'
   robot.http("https://api.meetup.com/2/open_events.xml?category=34&city=Nottingham&country=gb&time=-1w,1w&status=upcoming&key=47805b365e2e607b1d204864425b2327&sign=true")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  console.log(obj)
                  resp.send 