//
//  QuestionsShow.swift
//  testQuiz
//
//  Created by Cam on 10/15/23.
//

import Foundation

//This will be able to be changed in future updates. On scope with the level editor/creator
var howManyLevels = 3


//This is a lonely struct, holds soley the levelOn value. Maybe I could attach it to another struct?
struct LevelTracker
{
    static var levelOn = 2
}

//This will be read primarilly by the settings view
struct SettingsStruct
{
    static var enableShowNumber = true
    static var questionsIndex = howManyLevels


}

//This is the important data, it's used by the main view. 
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

