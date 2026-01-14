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
    @IBOutlet weak var Description: UILabel!
    
    
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
        
        resultIMC.text = String(format: "%.2f", imc)
        
        switch imc {
        case 0..<18,5:
            Description.text = "Bajo peso"
            resultIMC.textColor = UIColor.imcBajopeso
            Description.textColor = UIColor.imcBajopeso
        case 18,5..<25:
            Description.text = "Peso normal"
            resultIMC.textColor = UIColor.imcPesonormal
            Description.textColor = UIColor.imcPesonormal
        case 25..<30:
            Description.text = "Sobrepeso"
            resultIMC.textColor = UIColor.imcSobrepeso
            Description.textColor = UIColor.imcSobrepeso
        case 30..<40:
            Description.text = "Obesidad"
            resultIMC.textColor = UIColor.imcObesidad
            Description.textColor = UIColor.imcObesidad
        default:
            Description.text = "Obesidad grave"
            resultIMC.textColor = UIColor.imcObesidadgrave
            Description .textColor = UIColor.imcObesidadgrave
        }
        
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
