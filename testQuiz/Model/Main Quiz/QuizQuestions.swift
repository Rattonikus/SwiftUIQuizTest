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
    var settingsSet : [SettingsStruct] = []
    var numberOfQuestions : Int = 3
    
    
    //These are the main attraction
    let mainQuestions : [String] =
    [
        "A",
        "B",
        "C"
    ]
    //These are the answers, in an array
    //These will be edited... one day.
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
    //Truth1-4 should ONLY be chnaged in coordination wth answers1-4
    let truth1 : [Bool] =
    [
        true,
        false,
        false
    ]
    let truth2 : [Bool] =
    [
        false,
        true,
        false
    ]
    let truth3 : [Bool] =
    [
        false,
        false,
        false
    ]
    let truth4 : [Bool] =
    [
        false,
        false,
        true
    ]
    
    
    //This appends the following data to the QuestionsShow file 
    for index in 0..<numberOfQuestions
    {
        //This line is starting to get LONG... perhaps theres a better way to do this? - Oct. 15 23' 
        showQuestions.append(QuestionsShow(showQuestion: mainQuestions[index], showAnswer1: mainAnswers1[index], showAnswer2: mainAnswers2[index], showAnswer3: mainAnswers3[index], showAnswer4: mainAnswers4[index], answer1key: truth1[index], answer2key: truth2[index], answer3key: truth3[index], answer4key: truth4[index]))
    }
    
    return showQuestions
}
