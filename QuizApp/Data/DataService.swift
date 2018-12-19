//
//  DataService.swift
//  QuizApp
//
//  Created by Anna Kaukh on 12/18/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private var questions = [
                    Question(question: "The date of birth of famous Russian writer Alexand  Pushkin is June 6, 1799 ", answer: true),
                    Question(question: "The First World War was started by a train attack in Berlin.", answer: false),
                    Question(question: "Louis Braille, creator of the Braille system of writing for the blind, was himself blind.", answer: true),
                    Question(question: "Harry Potter's archenemy is Tom Marvolo Riddle.", answer: true),
                    Question(question: "The \"China Syndrome\" is what hostages experience when they begin to feel empathy for their captors.", answer: false),
                    Question(question: "Flight recorders onboard planes are painted black boxes.", answer: false),
                    Question(question: "According to the Declaration of Independence, the people \"have nothing to lose but their chains\".", answer: false),
                    Question(question: "Other than water, coffee is the world's most popular drink.", answer: true),
                    Question(question: "Victoria Street, Harry Potter author J.K. Rowling’s inspiration for Diagon Alley, is in London.", answer: false),
                    Question(question: "Dolphins call each other by name.", answer: true),
                    Question(question: "Three dogs survived the Titanic sinking out of 12 canines on board.", answer: true),
                    Question(question: "Roses are used as an alarm system in the vineyards.", answer: true),
                    Question(question: "About 40 million people visit Times Square each year.", answer: true),
                    Question(question: "Coca-Cola originally contained cocaine.", answer: true),
                    Question(question: "The first big Hollywood \"summer blockbuster\" was Jaws.", answer: true)
    ]
    
    func getQuestion() -> [Question] {
        return questions
    }
    
}
