//
//  QuizModel.swift
//  TestTechnique_Quiz
//
//  Created by OUSSAMA BENNOUR EL FAHSI on 25/12/2022.
//

import Foundation

struct DataModel: Codable {
    var data:QuizModel?
}

struct QuizModel: Codable {
    var questions: [Question]?
}

struct Question:Codable {
    var correct_answer:String
    var question:String
    var fisrt_option:String
    var second_option:String
    var third_option:String
    var subject :String

}
