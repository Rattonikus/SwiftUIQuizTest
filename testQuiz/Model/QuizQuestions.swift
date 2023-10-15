//
//  QuizQuestions.swift
//  testQuiz
//
//  Created by Cam on 10/4/23.
//

import Foundation


func loadQuestions() -> [QuestionsShow]
{
    var showQuestions : [QuestionsShow] = []
    
    //These are the main attraction
    let mainQuestions : [String] =
    [
        "A",
        "B",
        "C"
    ]
    //These are the answers, in an array
    let mainAnswersA : [String] =
    [
        "a1",
        "b1",
        "c1",
    ]
    //the burning truth... 
    let truth : [Bool] =
    [
        true,
        false,
        true
    ]
    
    for index in 0..<3
    {
        showQuestions.append(QuestionsShow(showQuestion: mainQuestions[index], showAnswer: mainAnswersA[index], isTrue: truth[index]))
    }
    
    return showQuestions
}
