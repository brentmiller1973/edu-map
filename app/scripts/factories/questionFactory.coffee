"use strict"
angular.module("eduQuizApp").factory "questionFactory", ->
  quiz =
    title: "General History"
    questions: [
      {
        question: "Tim Berners-Lee invented the Internet."
        options: [
          "True"
          "False"
        ]
        answer: 0
      }
      {
        question: "Dogs are better than cats."
        options: [
          "True"
          "False"
        ]
        answer: 1
      }
      {
        question: "Winter is coming."
        options: [
          "True"
          "False"
        ]
        answer: 0
      }
      {
        question: "Internet Explorer 5 for Mac is the most advanced browser on Earth."
        options: [
          "True"
          "False"
        ]
        answer: 1
      }
    ]

  getQuestion: (id) ->
    if id < quiz.questions.length
      quiz.questions[id]
    else
      false

  getTotal: (id) ->
    quiz.questions.length

  getTitle: ->
    quiz.title
