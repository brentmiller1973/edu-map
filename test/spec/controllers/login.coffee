'use strict'

describe 'Controller: LoginCtrl', ->

  # load the controller's module
  beforeEach module 'eduQuizApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    LoginCtrl = $controller 'LoginCtrl', {
      $scope: scope
    }

  it 'should have PAGE_NAME attached to scope', ->
    expect(scope.PAGE_NAME).toEqual "Login"
