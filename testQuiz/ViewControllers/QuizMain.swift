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
                    
                    Text(questions.showQuestion)
                    
                    HStack
                    {
                        Button(questions.showAnswer1, action: placeholderB)
                        Button(questions.showAnswer2, action: placeholderB)
                        Button(questions.showAnswer3, action: placeholderB)
                        Button(questions.showAnswer4, action: placeholderB)
                    }
                    
                    if gotWrong
                    {
                        NavigationLink("Retry?", destination: QuizHome().navigationBarBackButtonHidden(true))
                    }
                    
                    if gotRight
                    {
                        NavigationLink("Next quiz", destination: QuizMain(questions: loadQuestions()[levels.levelOn]))
                    }
            }
        }
        }
    }

    func placeholderB() -> Void
    {
        if questions.isTrue
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
