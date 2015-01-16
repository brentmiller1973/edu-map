"use strict"
angular.module("eduQuizApp").directive "quizControl", (questionFactory) ->
  restrict: "AE"
  scope: {}
  templateUrl: "/views/quizControl.html"
  link: (scope, element, attrs) ->
    scope.title = questionFactory.getTitle()
    scope.total = questionFactory.getTotal()
    scope.start = ->
      scope.id = 0
      scope.quizOver = false
      scope.inProgress = true
      scope.getQuestion()
      return

    scope.reset = ->
      scope.inProgress = false
      scope.score = 0
      return

    scope.getQuestion = ->
      q = questionFactory.getQuestion(scope.id)
      if q
        scope.question = q.question
        scope.options = q.options
        scope.answer = q.answer
        scope.answerMode = true
      else
        scope.quizOver = true
      return

    scope.checkAnswer = ->
      input = $("input[name=answer]:checked")
      return  unless $(input).length
      ans = $(input).val()
      if ans is scope.options[scope.answer]
        scope.score++
        scope.correctAns = true
      else
        scope.correctAns = false
      scope.answerMode = false
      return

    scope.nextQuestion = ->
      $("input[name=answer]").attr "checked", false
      scope.id++
      scope.getQuestion()
      return

    scope.reset()
    return
