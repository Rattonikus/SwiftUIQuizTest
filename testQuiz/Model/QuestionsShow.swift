//
//  QuestionsShow.swift
//  testQuiz
//
//  Created by Cam on 10/15/23.
//

import Foundation

var howManyLevels = 3

struct LevelTracker
{
    static var levelOn = 2
}

struct SettingsStruct
{
    static var enableShowNumber = false
    static var questionsIndex = howManyLevels


}


struct QuestionsShow
{
    let questionIndex = howManyLevels
    let showQuestion : String
    let showAnswer1 : String
    let showAnswer2 : String
    let showAnswer3 : String
    let showAnswer4 : String
    let answer1key : Bool
    let answer2key : Bool
    let answer3key : Bool
    let answer4key : Bool
}

