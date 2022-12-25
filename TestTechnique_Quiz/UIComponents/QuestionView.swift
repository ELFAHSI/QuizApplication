//
//  QuestionView.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import SwiftUI

struct QuestionView: View {
    
    private let question: String
    private let fisrt_option: String
    private let second_option: String
    private let third_option: String
    private let correct_option: String
    private let subject: String
    private var action: (Int) -> Void
    
    @State var selected:String = ""
    
    
    var body: some View {
        
        Text(question).font(.headline).fontWeight(.semibold).foregroundColor(.black).multilineTextAlignment(.center).frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
            
        )
        
        
        Spacer()
        
        ZStack {
            
            VStack(spacing: 50) {
                
                
                VStack(spacing:30){
                    
                    AnsButton(fisrt_option, isAccent: true){
                        selected = fisrt_option
                        action(check(fisrt_option))
                    }
                    
                    
                }
                
                VStack(spacing:30){
                    
                    AnsButton(second_option, isAccent: true){
                        selected = second_option
                        action(check(second_option))
                    }
                    
                    
                }
                
                VStack(spacing:30){
                    
                    AnsButton(third_option, isAccent: true){
                        selected = third_option
                        action(check(third_option))
                    }
                    
                    
                }
                
            }
            
        }
                
    }
    
    func check(_ option:String) -> Int {
        if option == correct_option
        {
            return 5
        }
        return 0
    }
    
    init(question: String, fisrt_option: String, second_option: String, third_option: String,correct_option: String,subject: String, action: @escaping (Int) -> Void) {
        self.question = question
        self.fisrt_option = fisrt_option
        self.second_option = second_option
        self.third_option = third_option
        self.correct_option = correct_option
        self.subject = subject
        self.action = action
    }
}



