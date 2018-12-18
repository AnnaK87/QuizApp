//
//  Question.swift
//  QuizApp
//
//  Created by Anna Kaukh on 12/18/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import Foundation

struct Question {
    private (set) public var question: String
    private (set) public var answer: Bool
    
    init(question: String, answer: Bool) {
        self.question = question
        self.answer = answer
    }
}
