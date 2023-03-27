//
//  CreateViewController.swift
//  Out of Milk
//
//  Created by Shishir_Mac on 27/3/23.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var haveAnAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createButtonAction(_ sender: UIButton) {
        print("createButton")
    }
    
    @IBAction func haveAnAccountButtonAction(_ sender: Any) {
        print("haveAnAccountButton")
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
