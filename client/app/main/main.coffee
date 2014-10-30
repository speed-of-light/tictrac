"use strict"
angular.module "ticTrac"
.config ($stateProvider) ->
  $stateProvider
  .state "root",
    url: "/"
    templateUrl: "app/main/view/root.html"
    controller: "MainCtrl"
