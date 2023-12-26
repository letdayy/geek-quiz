//
//  QuestionViewController.swift
//  GeekQuiz
//
//  Created by leticia.dayane on 24/12/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var score = 0
    var questionNumber = 0

    //chamando o titulo e os botões criados pelo UIKit
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet var questionButtons: [UIButton]!
    
    @IBAction func awnserButtonPressed(_ sender: UIButton) {
        let checkAnswerCorrect = questions[questionNumber].correctAnswer == sender.tag
        
        if checkAnswerCorrect {
            print("O usuário acertou a resposta!")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //chamando as funções
        layoutConfigure()
        questionConfiguration()
    }
    
    // configurar a estilização da página
    func layoutConfigure() {
        navigationItem.hidesBackButton = true
        
        //configurando o titulo da questao
        questionTitle.numberOfLines = 0
        questionTitle.textAlignment = .center
        
        // para aparecer as opções
        for button in questionButtons {
            button.layer.cornerRadius = 16.0
        }
        
        for button in questionButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    
    func questionConfiguration() {
        questionTitle.text = questions[questionNumber].title
    }



}
