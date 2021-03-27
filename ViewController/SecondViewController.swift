//
//  SecondViewController.swift
//  ViewController
//
//  Created by Sarah Foster on 3/26/21.
//

import UIKit

class SecondViewController: UIViewController {

    
    //declaring variable 
  var name = " "
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Second View ")

        // Do any additional setup after loading the view.
        
        print("Row Selected is: \(name)")
        
        // textfield data passed in
        nameLabel.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
