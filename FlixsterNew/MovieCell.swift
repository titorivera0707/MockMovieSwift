//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Tito Rivera on 3/5/23.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    /// Configures the cell's UI for the given track.
    func configure(with track: Movie) {
        trackNameLabel.text = track.movieName
        artistNameLabel.text = track.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.imageFirst, into: trackImageView)
    }

}
