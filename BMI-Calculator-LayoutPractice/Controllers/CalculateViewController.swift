

import UIKit

class CalculateViewController: UIViewController {

    //Link to UI
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //Link to Structures, Classes
    var calculations = Calculations()
    
    //Variables
    var heightValue: Float = 0.0
    var weightValue: Float = 0.0
    var bmiString: String = ""
    
    //Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        weightValue = 75
        heightValue = 1.5
    }
    
    //AutoReact to Slider Changes
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue = sender.value
        heightLabel.text = String(format: "%.2f", heightValue)+"m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue = sender.value
        weightLabel.text = String(format: "%.0f", weightValue)+"kg"
    }
    
    //React to Calculate Pressed
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculations.calculateBMI(W: weightValue, H: heightValue)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    //Prepare things in this UIViewController before Moving to Another Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let resultsView = segue.destination as! ResultsViewController
            resultsView.bmiValue = calculations.returnBMI()
            resultsView.adviceText = calculations.returnAdvice()
            resultsView.color = calculations.returnColor()
        }
    }
    
}

