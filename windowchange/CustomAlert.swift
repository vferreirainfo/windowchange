//
//  CustomAlert.swift
//  windowchange
//
//  Created by Vitor on 29/08/2022.
//

import Foundation
import UIKit

class CustomAlert:UIView {
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var customAlert: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit()
    {
        
    }
}
