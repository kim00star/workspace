//
//  ViewController.swift
//  dynamic_table_view_tutorial
//
//  Created by kimjiwon on 2022/06/15.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mytableView: UITableView!
    
    let contentArray = [
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
        "This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.",

        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //셀 리소스 파일 가져오기
//        let myTableViewCellNib = UINib(nibName: "MyTalbeViewCell", bundle: Bundle?)
        let myTalbeViewCellNib = UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil)
        
        //셀에 리소스 등록
        self.mytableView.register(myTalbeViewCellNib, forCellReuseIdentifier: "myTalbeViewCell")
        
        self.mytableView.rowHeight = UITableView.automaticDimension
        self.mytableView.estimatedRowHeight = 120
        
        //아주 중요! delegate와 dataSource 연결
        self.mytableView.delegate = self
        self.mytableView.dataSource = self
        
        print("contentArray.count : \(contentArray.count)")
        
    }

}

extension ViewController: UITableViewDelegate {
        
}


extension ViewController: UITableViewDataSource {
    
    // 테이블 뷰의 셀의 갯수
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.contentArray.count
        }
    // 각 셀에 대한 설정
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = mytableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! MyTableViewCell
            
            cell.userContentLabel.text = contentArray[indexPath.row]
            
            cell.userProfileImag.layer.cornerRadius = cell.userProfileImag.frame.height / 2
            
            return cell
    }
}
