//
//  ViewController.swift
//  BMI-iOS
//
//  Created by Tardes on 13/1/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HorizontalSl: UISlider!
    @IBOutlet weak var Altura: UILabel!
    @IBOutlet weak var Peso: UILabel!
    
    @IBOutlet weak var resultIMC: UILabel!
    @IBOutlet weak var MasMenos: UIStepper!
    @IBOutlet weak var CalculateButton: UIButton!
    
    var peso: Float = 60.0
    var altura: Float = 170.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressButton(_ sender: Any) {
    let alturaenm: Float = altura / 100
        let imc = peso / (alturaenm * alturaenm)
        print("El IMC es: \(imc)")
        resultIMC.text = "\(imc)"
        let formatedResult = String(format: "%.2f", imc)
        
        
    }
    @IBAction func pesoChanged(_ sender: Any) {
        peso = HorizontalSl.value
            Peso.text = "\(Int(peso)) Kg"
    }
    
    @IBAction func alturaChanged(_ sender: Any) {
        altura = Float(MasMenos.value)
            Altura.text = "\(altura) Cm"
    }
}
