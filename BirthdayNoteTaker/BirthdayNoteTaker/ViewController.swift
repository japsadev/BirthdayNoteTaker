//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Salih Yusuf Göktaş on 3.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name_TextField: UITextField!
    @IBOutlet weak var birthday_TextField: UITextField!
    
    @IBOutlet weak var birthday_Label: UILabel!
    @IBOutlet weak var name_Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
                let storedName = UserDefaults.standard.object(forKey: "name")
                let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
                
                //Casting - as? vs. as! force casting
                // Any
                
                if let newName = storedName as? String {
                    name_Label.text = "Name: \(newName)"
                }
                
                if let newBirthday = storedBirthday as? String {
                    birthday_Label.text = "Birthday: \(newBirthday)"
                }
        
    }

    @IBAction func save_Button(_ sender: Any) {
        
        name_Label.text = "Name: \(name_TextField.text!)"
        birthday_Label.text = "Birthday: \(birthday_TextField.text!)"

    }
    
    @IBAction func delete_Button(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
              let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
              
              // "" vs nil
              if (storedName as? String) != nil {
                  UserDefaults.standard.removeObject(forKey: "name")
                  name_Label.text = "Name: "
              }
              
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthday_Label.text = "Birthday: "
            
        }
        
    }
}

