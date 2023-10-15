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
    
    var body: some View
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
                    Button(questions.showAnswer, action: placeholderB)
                }
                
        }
        }
    }

    func placeholderB() -> Void
    {
        if questions.isTrue
        {
            backgroundColor = .green
        }
        else
        {
            backgroundColor = .red
        }
    }
}




#Preview
{
    QuizMain(questions: loadQuestions()[0])
}
