//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameView: UILabel!

    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    // TODO: Pt 1 - Add a track property
    
    var track: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: track.imageSecond, into: movieImageView)

        // Set labels with the associated track values.
        movieNameView.text = track.movieName
        averageLabel.text = track.movieAverage
        voteLabel.text = track.movieVote
        popularityLabel.text = track.moviePop

        // Create a date formatter to style our date and convert it to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        descriptionLabel.text = track.description
    }



}
