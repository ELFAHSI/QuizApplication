//
//  BaseView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI


enum Route: Hashable {
    case landingView
    case scoreView(Int, Int)
    case contentView(String)
    case subjectView
}


struct BaseView: View {
      
    var body: some View {
        NavigationStack{
            LandingView().navigationDestination(for: Route.self){
                route in
                switch route {
                case .landingView:
                    LandingView()
                case .contentView (let subject):
                    ContentView(subj: subject)
                case .subjectView:
                    SubjectView()
                case .scoreView(let score, let total):
                    ScoreView(score:score, total:total, model: UserViewModel())
                }
            }
            
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}

