//
//  ScoreView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI

struct ScoreView: View {
    
    var score = 0
    var total = 0
    @ObservedObject var model: UserViewModel

    
    var body: some View {
            ZStack {

                VStack(alignment: .center) {
                    if (score > 10) {
                        Image("smile").resizable().aspectRatio( contentMode: .fit).frame(width: 100.0,height: 100)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                        Text("Your Score")
                            .font(.title)
                            .fontWeight(.semibold)
                            .font(.largeTitle)
                            .lineSpacing(50)
                            .frame(width: 300)
                        Text("\(score)/\(total)")
                            .foregroundColor(.green)
      

                    }
                    
                    else {
                        Image("angry").resizable().aspectRatio( contentMode: .fit).frame(width: 100.0)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        Text("Your Score")
                            .font(.largeTitle)
                            .lineSpacing(50)
                            .frame(width: 300)
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("\(score)/\(total)")
                            .foregroundColor(.red)


                    }

                    
                    NavigationLink("Back to Home", value: Route.subjectView)
                        .padding(.all)
                        .background(Color.blue)
                        .foregroundColor(.white)
                   
                }
                .padding()
                .frame(minWidth: 300)
                .accessibilityLabel("Label")
                .accessibilityIdentifier("Identifier")
              
                
            }.navigationTitle("ScoreView").navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
        }
}
 
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(model: UserViewModel())
    }
}
