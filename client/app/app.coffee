"use strict"

angular.module "ticTrac", [
  "classy",
  "ngCookies",
  "ngResource",
  "ngAnimate",
  "ngSanitize",
  "ui.router",
  "ui.bootstrap",
]

.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise "/"
  $locationProvider.html5Mode true


