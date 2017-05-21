module.exports = (robot) ->

 robot.hear /weeks events/i, (resp) ->
   http = require 'http'
   robot.http("https://api.meetup.com/2/open_events.xml?category=34&city=Nottingham&country=gb&time=-1w,1w&status=upcoming&key=47805b365e2e607b1d204864425b2327&sign=true")
              .get() (err, res, body) ->
                  {parseString} = require 'xml2js'
                  parseString body, (err, result) ->
                    for a in [0...len = result.results.items.length]
                      console.log(result.results.items[a].item)
                      listofe = result.results.items[a].item
                      time = parseInt(listofe[a].time[0])
                      dateOfEvent = new Date(time)
                      resp.send "Event Name : " + listofe[a].name[0] +
                                "\n Date : " + dateOfEvent.getDate() + "/" + (dateOfEvent.getMonth()+1) + 
                                "\n Sign Up: " + (listofe[a].event_url[0])
          
                  