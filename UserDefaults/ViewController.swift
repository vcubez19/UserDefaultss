//
//  ViewController.swift
//  UserDefaults
//
//  Created by Vincent Cubit on 10/16/21.
//


import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var changeName: UITextField!
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UserDefaults.standard.setValue("Joe", forKey: "Name")
        

    }
    
    
    @IBAction func saveName(_ sender: Any) {
        
        
        let text = self.changeName.text
        
        
        if let value = text {
            self.nameLabel.text = value
        } else {
            print("Value is nil")
        }
        
        
    }
    

    @IBAction func loadOriginal(_ sender: Any) {
        
        let original = UserDefaults.standard.string(forKey: "Name")
        
        self.nameLabel.text = original
        
    }
    
    
}

