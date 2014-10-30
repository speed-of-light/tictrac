"use strict"
angular.module("ticTrac").classy.controller
  name: "MainCtrl"
  inject:
    $scope: "$"
    tweets: "t"

  init: ->
    @$.data = @t.data
    @t.load()

  fromNow: (time_str)->
    moment(time_str).fromNow()

  toggle_date: ->
    @t.toggle_date()

