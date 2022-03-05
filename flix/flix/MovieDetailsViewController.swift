//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Luqman Shibly on 2/27/22.
//

import AlamofireImage
import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var movieSynopsis: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var smallMovieImage: UIImageView!
    @IBOutlet weak var moviePoster: UIImageView!
    
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        movieTitle.text = movie["title"] as? String
        movieSynopsis.text = movie["overview"] as? String
        movieTitle.sizeToFit()
        movieSynopsis.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath =  movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        smallMovieImage.af_setImage(withURL: posterUrl!)
        
        let backdropPath =  movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        moviePoster.af_setImage(withURL: backdropUrl!)
        
        
    }
}
