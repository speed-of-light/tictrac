"use strict"

angular.module "ticTrac", [
  "classy",
  "ngCookies",
  "ngResource",
  "ngSanitize",
  "ui.router",
  "angularMoment"
]

.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise "/"
  $locationProvider.html5Mode true

