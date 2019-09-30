//
//  FormulaTopicosTableViewCell.swift
//  MathBeginner
//
//  Created by Aluno Mack on 19/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class FormulaTopicosTableViewCell: UITableViewCell {

    @IBOutlet weak var Image_Topico: UIImageView!
    
    @IBOutlet weak var Nome_Topico: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
