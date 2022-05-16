//
//  LaptopInputViewController.swift
//  LaptopInputViewController
//

import UIKit

class LaptopInputViewController: UIViewController {
    
    @IBOutlet weak var brandInput: UITextField!
    @IBOutlet weak var priceInput: UITextField!
    @IBOutlet weak var colorInput: UITextField!
    @IBOutlet weak var sizeInput: UITextField!
    @IBOutlet weak var cpuInput: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandInput.delegate = self
        priceInput.delegate = self
        cpuInput.delegate = self
        colorInput.delegate = self
        sizeInput.delegate = self
    }
        
    @IBAction func button_tapped(_ sender: Any) {
        textView.text = "brand:\(brandInput.text)\nprice:\(priceInput.text)\ncpu:\(cpuInput.text)\ncolor:\(colorInput.text)\nsize:\(sizeInput.text)"
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        brandInput.resignFirstResponder()
    }
    
}

extension LaptopInputViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
