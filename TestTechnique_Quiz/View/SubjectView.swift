//
//  subjectView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI

struct SubjectView: View {

    @State var subject: String = "sport"

    var body: some View {
            ZStack {
               
                VStack(spacing: 50) {

                    VStack(spacing:30){
                       
                        NavigationLink("Sport", value: Route.contentView("Sport"))

                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.capsule)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(50.0)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    
                    VStack(spacing:30){
                       
                        NavigationLink("Histoir", value: Route.contentView("GEO"))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.roundedRectangle)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    VStack(spacing:30){
                       
                            NavigationLink("Music", value: Route.contentView("Music"))
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.roundedRectangle)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
            
               
            .navigationTitle("LandingView").navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
        }
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView()
    }
}
