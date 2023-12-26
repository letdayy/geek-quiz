//
//  Question.swift
//  GeekQuiz
//
//  Created by leticia.dayane on 26/12/23.
//

import Foundation

struct Question {
    let title: String
    let answers: [String]
    let correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Quem é o protagonista do anime One Piece?", answers: ["Ichigo Kurosaki", "Naruto Uzumaki", "Monkey D. Luffy"], correctAnswer: 2),
    Question(title: "Qual é o nome verdadeiro do super-herói Homem de Ferro?", answers: ["Tony Stark", "Bruce Banner", "Steve Rogers"], correctAnswer: 0),
    Question(title: "Qual é o nome do universo fictício onde se passa a maioria dos jogos da série The Legend of Zelda?", answers: ["Hyrule", "Narnia", "Middle-earth"], correctAnswer: 0),
    Question(title: "Em Star Wars: O Império Contra-Ataca, qual é o nome do planeta onde Yoda vive?", answers: ["Endor", "Dagobah", "Hoth"], correctAnswer: 1)
]
