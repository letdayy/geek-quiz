//
//  PerformanceViewController.swift
//  GeekQuiz
//
//  Created by leticia.dayane on 31/12/23.
//

import UIKit

class PerformanceViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    
    @IBOutlet weak var restartQuizButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layoutConfigure()
        // Do any additional setup after loading the view.
    }
    
    
    func layoutConfigure() {
        restartQuizButton.layer.cornerRadius = 16.0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
