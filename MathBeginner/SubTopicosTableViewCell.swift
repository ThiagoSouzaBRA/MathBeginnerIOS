//
//  SubTopicosTableViewCell.swift
//  MathBeginner
//
//  Created by Aluno Mack on 19/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class SubTopicosTableViewCell: UITableViewCell {

    @IBOutlet weak var Imagem_SubTopico: UIImageView!
    
    @IBOutlet weak var Titulo_SubTopico: UILabel!
    
    @IBOutlet weak var legenda_SubTopico: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
