//
//  ViewController.swift
//  GeekQuiz
//
//  Created by leticia.dayane on 24/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonStartQuiz: UIButton!
    
    
    @IBAction func buttonClick(_ sender: Any) {
        print("O botão foi pressionado!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonLayout()
    }

    func buttonLayout() {
        buttonStartQuiz.layer.cornerRadius = 16.0
    }
}

