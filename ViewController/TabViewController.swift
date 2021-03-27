//
//  TabViewController.swift
//  ViewController
//
//  Created by Sarah Foster on 3/26/21.
//

import Foundation

import UIKit

class TabViewController: UIViewController {
    
   
    @IBOutlet weak var textField: UITextField!
    
    var nameText = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
  
// button pressed function
    @IBAction func button(_ sender: Any) {
    

    
        self.nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! TabSecondViewController
        vc.finalName = self.nameText
    }
        

    }


