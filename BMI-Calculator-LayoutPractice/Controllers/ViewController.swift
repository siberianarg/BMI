
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(round((sender.value) * 100) / 100.0)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = Int(weight / pow(height, 2))
        print(bmi) 
    }
    
}

