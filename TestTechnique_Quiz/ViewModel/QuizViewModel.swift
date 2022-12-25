//
//  QuizViewModel.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import Foundation


class QuizViewModel{
    
    var questionModel: DataModel?
    
    func getAllQuestions(completion: @escaping () -> ()) {
        if let path = Bundle.main.path(forResource: "demo", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                        let jsonDecoder = JSONDecoder()
                let finalData = try! jsonDecoder.decode(DataModel.self, from:data)

                      self.questionModel = finalData
                    completion()
                  
              } catch {
                   // handle error
              }
        }
    }}




