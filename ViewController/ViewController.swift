//
//  ViewController.swift
//  ViewController
//
//  Created by Sarah Foster on 3/26/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedRow: Int = 0
    
    
   // Set the number of Rows in each section

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
   // Setting the cells in each section.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        
        // Reusing cells in the table view
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
            
        
            // Calling the element # in the rows and printing them out
            cell.textLabel?.text = " Element # \(indexPath.row)"
        
        cell.accessoryType = .disclosureIndicator
         //
            print(indexPath.row)
        
   return cell
    }
            
    
    // Calling the selected rows and printing them out
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" Row Selected \(indexPath.row)")
        
        selectedRow = indexPath.row
        
        performSegue(withIdentifier: "TableSegue", sender: nil)
    }

    
    // calling the segue to the second view screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SecondViewController {
            let secondVC = segue.destination as?
            SecondViewController
            
            segue.destination.title = " Element # \(selectedRow)"
            secondVC?.name = " Row \(selectedRow)"
            
            
        }
    }
    
    
    override func viewDidLoad() {
   super.viewDidLoad()
        }
    }

        

