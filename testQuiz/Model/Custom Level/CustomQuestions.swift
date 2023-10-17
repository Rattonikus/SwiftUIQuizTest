//
//  CustomQuestions.swift
//  testQuiz
//
//  Created by Cameron Elkins on 10/16/23.
//

import Foundation

struct customMaker
{
    static var numberOfCustomQuestions = 3
    
    //These are the main attraction
    static var mainQuestions : [String] =
    [
        "A",
        "B",
        "C"
    ]
    //These are the answers, in an array
    //These will be edited... one day.
    static var mainAnswers1 : [String] =
    [
        "a1",
        "b1",
        "c1",
    ]
    
    static var mainAnswers2 : [String] =
    [
        "a2",
        "b2",
        "c2",
    ]
    
    static var mainAnswers3 : [String] =
    [
        "a3",
        "b3",
        "c3",
    ]
    
    static var mainAnswers4 : [String] =
    [
        "a4",
        "b4",
        "c4",
    ]
    //the burning truth...
    //Truth1-4 should ONLY be chnaged in coordination wth answers1-4
    static var truth1 : [Bool] =
    [
        true,
        false,
        false
    ]
    static var truth2 : [Bool] =
    [
        false,
        true,
        false
    ]
    static var truth3 : [Bool] =
    [
        false,
        false,
        false
    ]
    static var truth4 : [Bool] =
    [
        false,
        false,
        true
    ]
    
}




func loadCustomQuestions() -> [CustomShow]
{
    var cus = customMaker.self
    var showCustomQuestions : [CustomShow] = []
    
    
    //This appends the following data to the QuestionsShow file
    for index in 0..<cus.numberOfCustomQuestions
    {
        //This line is starting to get LONG... perhaps theres a better way to do this? - Oct. 15 23'
        showCustomQuestions.append(CustomShow(showQuestion: cus.mainQuestions[index], showAnswer1: cus.mainAnswers1[index], showAnswer2: cus.mainAnswers2[index], showAnswer3: cus.mainAnswers3[index], showAnswer4: cus.mainAnswers4[index], answer1key: cus.truth1[index], answer2key: cus.truth2[index], answer3key: cus.truth3[index], answer4key: cus.truth4[index]))
    }
    
    return showCustomQuestions
}
