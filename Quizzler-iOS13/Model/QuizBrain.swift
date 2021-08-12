//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Katie McBratney on 8/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(question: "I am tired", answer: "True"),
        Question(question: "I got tons of sleep last night", answer: "False"),
        Question(question: "Nobody thinks I'm ambitious", answer: "True")
    ]
    
    var score = 0
    var questionNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let actualAnswer = quiz[questionNumber%3].answer
        let ans = actualAnswer == userAnswer
        if ans {
            score += 1
            return true
        }
        else {
            return false
        }
    }
    
    mutating func nextQuestion() -> String {
        self.questionNumber += 1
        return quiz[questionNumber%3].question
    }
    
    func getProgress() -> Float {
        return Float((questionNumber%3)+1) / Float(quiz.count)
    }
}
