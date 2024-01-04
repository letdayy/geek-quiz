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
    
    // sender é o botão!
    @IBAction func awnserButtonPressed(_ sender: UIButton) {
        let checkAnswerCorrect = questions[questionNumber].correctAnswer == sender.tag
        
        if checkAnswerCorrect {
            print("O usuário acertou a resposta!")
            sender.backgroundColor = UIColor(red: 0/255, green: 202/255, blue: 57/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            //colocando um tempo entre as questões para poder ver o acerto ou erro
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(questionConfiguration), userInfo: nil, repeats: false)
            
        } else {
            navigateToPerformanceScreen()
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
        
        
       
    }
    
    //código para fazer aparecer as questões e as alternativas aparecerem
    @objc func questionConfiguration() {
        questionTitle.text = questions[questionNumber].title
        
        for button in questionButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
            
            // para o botão voltar a cor normal na próxima questão
            button.backgroundColor = UIColor(red: 255/255, green: 49/255, blue: 234/255, alpha: 1.0)
        } 
    }
    
    
    func navigateToPerformanceScreen() {
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.score = score
    }

}
