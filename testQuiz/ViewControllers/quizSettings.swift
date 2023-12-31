//
//  quizSettings.swift
//  testQuiz
//
//  Created by Cameron Elkins on 10/15/23.
//

import SwiftUI
//This is not a setting. Remove this if you see this. This is
//a test of the github desktop commit system.

struct quizSettings: View 
{
    @State var levels = LevelTracker.levelOn
    @State var questions = QuestionsShow.self
    @State private var testy = "0"
    @State var settings = SettingsStruct.self
    @State var toggleDevSettings = 0
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                List
                {
                    Section(header: Text("Settings"))
                    {
                        Button("Reset Current Level", action: resetLevel )
                        Button("Toggle show level on", action: toggleLevelNumber)
                        
                    }
                    Section(header: Text("Return"))
                    {
                        NavigationLink("Return to the main screen", destination: QuizHome().navigationBarBackButtonHidden(true))
                    }
                    if toggleDevSettings > 9
                    {
                        Section(header: Text("Developer Options"))
                        {
                            TextField("Test", text: $testy)
                                .keyboardType(.numberPad)
                            Button("Set level", action: setLevel)
                            Text("Testy is set to \(testy)")
                            Text("Current level is set to \(levels)")
                            Text("There are \(settings.questionsIndex) questions")
                            
                        }
                        
                    }
                }
        }
        }
    }
    
    func setLevel() -> Void
    {
        levels = Int(testy) ?? 0
    }
    
    func resetLevel()
    {
        levels = 0
    }
    func toggleLevelNumber()
    {
        toggleDevSettings += 1
        if SettingsStruct.enableShowNumber == false
        {
            SettingsStruct.enableShowNumber = true
        }
        else
        {
            SettingsStruct.enableShowNumber = false
        }
            
    }

}

#Preview 
{
    quizSettings()
}
