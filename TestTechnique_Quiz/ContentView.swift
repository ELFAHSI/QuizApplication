//
//  ContentView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    var subj: String
    @State private var viewModel = QuizViewModel()
    @State private var questions: [Question]?
    @State private var nextIndex = 0
    @State private var userScore = 0
    @State private var showingSheet = false

    
    @State private var showScoreView:String = ""
    
    func next(){
        if nextIndex >= 0 && nextIndex <= questions!.count - 2 {
            nextIndex += 1
        }else {
            showScoreView = "Show Score"
            
        }
    }
    
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    if(!showScoreView.isEmpty){
                        NavigationLink(showScoreView, value: Route.scoreView( userScore,questions!.count * 5 )).buttonStyle(UtilButtonStyle())
                    } 
                    
                    
                    Spacer()
                    
                }.padding(30)
                Spacer()
                if  questions?[nextIndex] != nil {
                    let question = questions![nextIndex]

                        QuestionView(question: question.question, fisrt_option: question.fisrt_option, second_option: question.second_option, third_option: question.third_option, correct_option: question.correct_answer, subject: question.subject){
                            score in userScore += score
                            next()

                        }
                        
                    
                    
                    
                }
                Spacer()
                    
            }.onAppear{
                viewModel.getAllQuestions(completion: {
                    let questionData = viewModel.questionModel
                    
                    if let data = questionData {
                        if let qs = data.data {
                            
                           // questions = qs.questions
                            questions = qs.questions?.filter { $0.subject == subj }

                        }
                        
                    }
                    
                })
                
            }.navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(subj: "Sport")
        }
    }
    

