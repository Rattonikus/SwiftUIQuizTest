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
    let mainAnswers1 : [String] =
    [
        "a1",
        "b1",
        "c1",
    ]
    
    let mainAnswers2 : [String] =
    [
        "a2",
        "b2",
        "c2",
    ]
    
    let mainAnswers3 : [String] =
    [
        "a3",
        "b3",
        "c3",
    ]
    
    let mainAnswers4 : [String] =
    [
        "a4",
        "b4",
        "c4",
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
        //This line is starting to get LONG... perhaps theres a better way to do this? - Oct. 15 23' 
        showQuestions.append(QuestionsShow(showQuestion: mainQuestions[index], showAnswer1: mainAnswers1[index], showAnswer2: mainAnswers2[index], showAnswer3: mainAnswers3[index], showAnswer4: mainAnswers4[index], isTrue: truth[index]))
    }
    
    
    
    return showQuestions
}
