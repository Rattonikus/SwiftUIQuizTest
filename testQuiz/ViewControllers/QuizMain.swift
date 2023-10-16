//
//  SwiftUIView.swift
//  testQuiz
//
//  Created by Cam on 10/15/23.
//

//I Will get around to prettifying this... soon. 


import SwiftUI

struct QuizMain: View 
{
    @State var questions : QuestionsShow
    @State private var backgroundColor : Color = .gray
    @State private var gotWrong : Bool = false
    @State var levels = LevelTracker.self
    @State private var gotRight : Bool = false
    @State var settings = SettingsStruct.self
    
    var body: some View
    {
        NavigationStack
        {
            ZStack
            {
                backgroundColor
                    .ignoresSafeArea(.all)
                VStack
                {
                    if settings.enableShowNumber
                    {
                        Text("\(levels.levelOn) of \(settings.questionsIndex)")
                    }
                    
                    Text(questions.showQuestion)
                    
                    
                    HStack
                    {
                        Button(questions.showAnswer1, action: answerOne)
                        Button(questions.showAnswer2, action: answerTwo)
                        Button(questions.showAnswer3, action: answerThree)
                        Button(questions.showAnswer4, action: answerFour)
                    }
                    
                    if gotWrong
                    {
                        NavigationLink("Retry?", destination: QuizMain(questions: loadQuestions()[levels.levelOn]).navigationBarBackButtonHidden(true))
                        NavigationLink("Quit to home screen", destination: QuizHome())
                    }
                    
                    if gotRight
                    {
                        if levels.levelOn == questions.questionIndex
                        {
                            Text("That was the last question, very nice!")
                            NavigationLink("Return Home", destination: QuizHome())
                        
                        }
                        
                        NavigationLink("Next quiz", destination: QuizMain(questions: loadQuestions()[levels.levelOn]))
                    }
            }
        }
        }
    }

    func answerOne() -> Void
    {
        if questions.answer1key
        {
            backgroundColor = .green
            levels.levelOn += 1
            gotRight = true
        }
        else
        {
            gotWrong = true
            backgroundColor = .red
        }
        
        if levels.levelOn > 2
        {
            levels.levelOn = 0
        }
        
    }
    
    func answerTwo() -> Void
    {
        if questions.answer2key
        {
            backgroundColor = .green
            levels.levelOn += 1
            gotRight = true
        }
        else
        {
            gotWrong = true
            backgroundColor = .red
        }
        
        if levels.levelOn > 2
        {
            levels.levelOn = 0
        }
        
    }
    
    func answerThree() -> Void
    {
        if questions.answer3key
        {
            backgroundColor = .green
            levels.levelOn += 1
            gotRight = true
        }
        else
        {
            gotWrong = true
            backgroundColor = .red
        }
        
        if levels.levelOn > 2
        {
            levels.levelOn = 0
        }
        
    }
    
    func answerFour() -> Void
    {
        if questions.answer4key
        {
            backgroundColor = .green
            levels.levelOn += 1
            gotRight = true
        }
        else
        {
            gotWrong = true
            backgroundColor = .red
        }
        
        if levels.levelOn > 2
        {
            levels.levelOn = 0
        }
        
    }
    
}




#Preview
{
    QuizMain(questions: loadQuestions()[1])
}
