//
//  ContentView.swift
//  testQuiz
//
//  Created by Cam on 10/4/23.
//

import SwiftUI


struct QuizHome: View
{
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
                Button("Click here to continue", action: ButtonValue)
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
