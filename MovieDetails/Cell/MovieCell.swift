//
//  MovieCell.swift
//  MovieDetails
//
//  Created by Gustavo on 07/09/21.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(image: UIImage,
                   title: String,
                   year: String,
                   category: String) {
        
        movieImage.image = image
        titleLabel.text = title
        yearLabel.text = year
        categoryLabel.text = category
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
