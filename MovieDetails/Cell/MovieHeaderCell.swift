//
//  MovieHeaderCell.swift
//  MovieDetails
//
//  Created by Gustavo on 06/09/21.
//

import UIKit

class MovieHeaderCell: UITableViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var viewsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(image: UIImage,
                   title: String,
                   like: String,
                   views: String) {
                
        movieImage.image = image
        titleLabel.text = title
        likeLabel.text = like
        viewsLabel.text = views
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
