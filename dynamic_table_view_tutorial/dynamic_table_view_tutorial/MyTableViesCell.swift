//
//  MyTableViesCell.swift
//  dynamic_table_view_tutorial
//
//  Created by kimjiwon on 2022/06/15.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userContentLabel: UILabel!
    @IBOutlet weak var userProfileImag: UIImageView!
    
    //셀이 렌더링(그릴때) 될때
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MyTableViewCell - awakeFromNib() called")
        
        userProfileImag.layer.cornerRadius = userProfileImag.frame.width / 2
    }
}
