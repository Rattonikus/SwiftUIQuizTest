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
        }
        else
        {
            gotWrong = true
            backgroundColor = .red
        }
    }
}




#Preview
{
    QuizMain(questions: loadQuestions()[1])
}
