//
//  CustomQuizCreator.swift
//  testQuiz
//
//  Created by Cameron Elkins on 10/16/23.
//

import SwiftUI

struct CustomQuizCreator: View 
{
    @State var custom = customMaker.self
    @State var customQuestion = ""
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text("Test this \(custom.mainAnswers1.count)")
        Button("Test this", action: testButt)
        Text(custom.mainAnswers1[2])
        TextField("aaa", text: $customQuestion)
    }
    

    func testButt()
    {
        
  
    }
}

#Preview 
{
    CustomQuizCreator()
}
