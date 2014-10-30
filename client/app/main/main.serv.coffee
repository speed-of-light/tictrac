"use strict"
angular.module "ticTrac"
.service "tweets", ($http, $cookieStore)->

  r =
    data:
      option:
        timeago: true

  r.load = ->
    $http.get('/assets/data.js').then (res)->
      eval(res.data)
      r.data.tweets = twee

  r.toggle_date = ->
    td = $cookieStore.get("timeago") || false
    td = !td
    r.data.option.timeago = td
    $cookieStore.put("timeago", td)

  r
