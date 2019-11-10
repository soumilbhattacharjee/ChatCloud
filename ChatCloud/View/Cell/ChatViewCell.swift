//
//  ChatViewCell.swift
//  ChatCloud
//
//  Created by Soumil on 09/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import UIKit

class ChatViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblView: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    /** Description: Preparing the UI
     - Parameters: No Parameter
     - Returns: No Parameter
     */
    func prepareUI() {
        imgView.layer.cornerRadius = imgView.frame.width/2
    }
}
