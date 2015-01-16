"use strict"
angular.module("eduQuizApp").controller "HeaderCtrl", ($scope, $location) ->
  $scope.isActive = (viewLocation) ->
    viewLocation is $location.path()
