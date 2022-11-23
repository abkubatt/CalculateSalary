//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Abdulmajit Kubatbekov on 23.11.22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var res = "simple"
    var people: Int?
    var percent: Int?

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = "Split between \(people ?? 1) people, with \(percent ?? 1)% tip"
        resultLabel.text = res
        
    }
    
    @IBAction func reCalculate(_ sender: Any) {
        self.dismiss(animated: true)
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
