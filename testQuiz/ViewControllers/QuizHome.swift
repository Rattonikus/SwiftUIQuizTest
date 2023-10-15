//
//  ContentView.swift
//  testQuiz
//
//  Created by Cam on 10/4/23.
//

import SwiftUI


struct QuizHome: View
{
    @State var levels = LevelTracker.self
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                Text("Welcome to the simple quiz")
                    .underline()
                    .bold()
                //Right now, this is placeholder until I properly implement the right way to call the proper quiz data. This will (eventually) lead to where it intends. 
                NavigationLink("Click here to continue", destination: QuizMain(questions: loadQuestions()[levels.levelOn]) .navigationBarBackButtonHidden(true))
                NavigationLink("Settings", destination: quizSettings())
                
            }
        .padding()
        }
    }
}



func ButtonValue() -> Void
{
    
}


#Preview    
{
    QuizHome()
}
