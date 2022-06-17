//
//  ViewController.swift
//  OXGameTest
//
//  Created by kimjiwon on 2022/06/16.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_startBtn(_ sender: Any) {
        //storyboard find controller
        
        //변수?
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController") {
            
            self.navigationController?
                .pushViewController(controller, animated: true)
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

