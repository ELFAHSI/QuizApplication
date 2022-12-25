//
//  LandingView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI

struct LandingView: View {
    @State private var name: String = ""
    @ObservedObject private var userViewModel = UserViewModel()


    var body: some View {
            ZStack {
               
                VStack(spacing: 50) {
                    VStack{
                        
                        Text("Quiz Test").font(.largeTitle).fontWeight(.bold).foregroundColor(Color("Primary")).padding(.bottom, 6.0)
                        
                    }
                    
                    VStack(spacing:30){
                       
                        Section(footer:Text(userViewModel.usernameMessage).foregroundColor(.red)) {
                          TextField("Username", text: $userViewModel.username)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .frame(width: 300.0)
                                .background(.white)
                                .foregroundColor(.black)
                                .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .border(Color.gray, width: 2)


                        }
                        
                    }
                    
                    VStack(spacing:30){
                       
                        NavigationLink("Play", value: Route.subjectView)
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.automatic)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                        
                    }}
            
               
            .navigationTitle("LandingView").navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            LandingView().navigationDestination(for: Route.self){
                route in
                switch route {
                case .landingView:
                    LandingView()
                case .contentView:
                    ContentView(subj: "Sport")
                case .subjectView:
                    SubjectView()
                case .scoreView:
                    ScoreView(model: UserViewModel())
                }
            }

        }
    }
}
