//
//  FirstViewController.swift
//  Protocol Delegate
//
//  Created by Julian Boxnick on 17.09.22.
//

import UIKit

//Protokoll
protocol StringTransferDelegate: AnyObject {
    
    //Verpflichtend
    
    func transferAndShowString(string: String)
    
    //Optional
    func machIrgendwasAnderes()
}

//Um Protokoll - Funktionen optional zu machen:

extension StringTransferDelegate {
    
    func machIrgendwasAnderes() {}
}





class FirstViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var informationLabel: UILabel!
    
    //MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Buttons
    
    @IBAction func nextVCButtonTapped(_ sender: UIButton) {
        
        informationLabel.text = ""
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            if let nextViewController = segue.destination as? SecondViewController {
                //Dem Ziel "self" (FirstViewController) als Delegate zuweisen
                    nextViewController.transferDelegate = self
            }
        }
    }
}

//MARK: - StringTransferDelegate

extension FirstViewController: StringTransferDelegate {
    
    func transferAndShowString(string: String) {
        informationLabel.text = string
    }
}





















