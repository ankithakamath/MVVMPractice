//
//  userCell.swift
//  practiceAlamofire
//
//  Created by Ankitha Kamath on 01/12/21.
//

import UIKit

class userCell: UITableViewCell {

    @IBOutlet weak var lblID: UILabel!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblStatus: UILabel!
    var modelUser: UserModel?{
        didSet{
            configure()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(){
        let status = modelUser?.getStatusColor()
        lblStatus.text = status?.0
        backgroundColor = status?.1
        if let id = modelUser?.id{
          lblID.text = "\(id)"
        }else{
         lblID.text = "no id"
        }
        lblTitle.text = modelUser?.title
    }
}
