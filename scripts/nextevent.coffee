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

 robot.hear /notts AI/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/Nottingham-Artificial-Intelligence-Meetup/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link

 robot.hear /notts progs/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/NottinghamProgrammers/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link

 robot.hear /tech notts/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/Tech-Nottingham/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link
 
 robot.hear /wit notts/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/Women-In-Tech-Nottingham/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link

 robot.hear /blockchain notts/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/Blockchain-Nottingham/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link
 
 robot.hear /notts js/i, (resp) ->
   http = require 'http'
   robot.http("http://api.meetup.com/NottsJS/events/?status=upcoming")
              .get() (err, res, body) ->
                  obj = JSON.parse(body)
                  time = (obj[0].time)
                  dateOfEvent = new Date(time)
                  resp.send "Next Event : " + obj[0].name +
                            " \n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                            " \n Where : " + obj[0].venue.address_1 +
                            " \n Sign Up: " + obj[0].link
