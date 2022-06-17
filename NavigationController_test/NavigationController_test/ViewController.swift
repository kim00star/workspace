//
//  ViewController.swift
//  NavigationController_test
//
//  Created by kimjiwon on 2022/06/16.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_moveBtn(_ sender: Any) {
    
    
    if let controller =  self.storyboard?.instantiateViewController(withIdentifier:  "DetailController") {
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
        
        }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

