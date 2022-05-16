//
//  ViewController.swift
//  Compare2
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func laptop_tapped(_ sender: Any) {
        
        let Main = UIStoryboard(name:"Main", bundle:Bundle.main)
        
        guard let LaptopInputViewController = Main.instantiateViewController(withIdentifier: "LaptopInputViewController") as? LaptopInputViewController else{
            print("Coundn't find the view controller")
            return
        }
        
        present(LaptopInputViewController, animated:true, completion: nil)
    }


}
