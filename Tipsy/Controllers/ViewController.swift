

import UIKit

class ViewController: UIViewController {
    var timer: Timer?

    var percentValue: Int?
    var calculatedValue: String = ""
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var numberOfPersonLabel: UILabel!
    @IBOutlet weak var inputLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func percentButton(_ sender: UIButton) {
        percentValue = Int(String(sender.currentTitle!.prefix(2)))
        sender.backgroundColor = UIColor.green
        timer =  Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            sender.backgroundColor = UIColor.clear
        }
    }
    
    
    @IBAction func personCounter(_ sender: UIStepper) {
        var v = sender.value.description
        numberOfPersonLabel.text = String(Int(Float(v)!))
        
    }
    
    
    
    
    @IBAction func calculate(_ sender: UIButton) {
        calculatedValue = calculatorBrain.calculateSalary(inputValue: Float(inputLabel.text!) ?? 0.0, tipValue: percentValue ?? 10, numberOfPerson: Int(numberOfPersonLabel.text!) ?? 1)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.people = Int(numberOfPersonLabel.text!) ?? 1
            destinationVC.res = calculatedValue
            destinationVC.percent = percentValue
        }
    }
    
}

