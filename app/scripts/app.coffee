"use strict"

###*
@ngdoc overview
@name eduQuizApp
@description
# eduQuizApp

Main module of the application.
###
angular.module("eduQuizApp", [
  "ngAnimate"
  "ngCookies"
  "ngResource"
  "ngRoute"
  "ngSanitize"
  "ngTouch"
]).config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/login.html"
    controller: "LoginCtrl"
  ).when("/about",
    templateUrl: "views/about.html"
    controller: "AboutCtrl"
  ).when("/contact",
    templateUrl: "views/contact.html"
    controller: "ContactCtrl"
  ).when("/quiz",
    templateUrl: "views/quiz.html"
    controller: "QuizCtrl"
  ).otherwise redirectTo: "/"
