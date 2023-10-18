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
    @State var questionTitle = ""
    @State var Answer1 = ""
    @State var Ans1True = false
    @State var Answer2 = ""
    @State var Ans2True = false
    @State var Answer3 = ""
    @State var Ans3True = false
    @State var Answer4 = ""
    @State var Ans4True = false
    @State var testVar = 2
    
   @State var someText = ["False", "True"]
   @State var textVar1 = 0
    @State var textVar2 = 0
    @State var textVar3 = 0
    @State var textVar4 = 0
    
    var body: some View
    {
        VStack
        {
            List
            {
                Section(header: Text("Create new level"))
                {
                    Text(custom.mainQuestions[testVar])
                    Text(questionTitle + Answer1)
                    TextField("Question Title", text: $questionTitle)
                    TextField("Answer 1", text: $Answer1)
                    Button(someText[textVar1], action: changeTrue1)
                    TextField("Answer 2", text: $Answer2)
                    Button(someText[textVar2], action: changeTrue2)
                    TextField("Answer 3", text: $Answer3)
                    Button(someText[textVar3], action: changeTrue3)
                    TextField("Answer 4", text: $Answer4)
                    Button(someText[textVar4], action: changeTrue4)
                    Button("Apply", action: testButt)
                    
                    
                    
                }
            }
        }
    }
    

    
    func changeTrue1()
    {
        if (Ans1True == false)
        {
            Ans1True = true
            textVar1 = 1
        }
        else
        {
            Ans1True = false
            textVar1 = 0
        }
    }
    func changeTrue2()
    {
        if (Ans2True == false)
        {
            Ans2True = true
            textVar2 = 1
        }
        else
        {
            Ans2True = false
            textVar2 = 0
        }
    }
    func changeTrue3()
    {
        if (Ans3True == false)
        {
            Ans3True = true
            textVar3 = 1
        }
        else
        {
            Ans3True = false
            textVar3 = 0
        }
    }
    func changeTrue4()
    {
        if (Ans4True == false)
        {
            Ans4True = true
            textVar4 = 1
        }
        else
        {
            Ans4True = false
            textVar4 = 0
        }
    }
    
    
    
    
    
    
    func testButt()
    {
        custom.mainQuestions.append(questionTitle)
        testVar += 1
    }
}

#Preview 
{
    CustomQuizCreator()
}
