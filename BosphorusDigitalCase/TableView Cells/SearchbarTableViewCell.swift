//
//  SearchbarTableViewCell.swift
//  BosphorusDigitalCase
//
//  Created by Barış Can Akkaya on 22.12.2021.
//

import UIKit

class SearchbarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mainViewi: UIView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var microphoneButton: UIButton!
    @IBOutlet weak var barcodeButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
