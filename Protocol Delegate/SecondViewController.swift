//
//  SecondViewController.swift
//  Protocol Delegate
//
//  Created by Julian Boxnick on 17.09.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var informationTextField: UITextField!
    
    //MARK: - Properties
    
    //Delegate als Variable definieren
    weak var transferDelegate: StringTransferDelegate?
    
    //MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Buttons
    
    @IBAction func transferInfoButtonTapped(_ sender: UIButton) {
        
        //Delegate - Funktion aufrufen
        transferDelegate?.transferAndShowString(string: informationTextField.text!)
        informationTextField.text = ""
        
        self.dismiss(animated: true)
    }
}
