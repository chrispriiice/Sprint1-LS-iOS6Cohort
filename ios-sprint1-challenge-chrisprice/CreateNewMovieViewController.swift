//
//  CreateNewMovieViewController.swift
//  ios-sprint1-challenge-chrisprice
//
//  Created by Chris Price on 4/26/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class CreateNewMovieViewController: UITabBarController {

    var movieController: MovieController?
    
    
    @IBOutlet weak var addMovieTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMovieButtonPressed(_ sender: Any) {
        

        guard let movie = addMovieTitleTextField.text
        else { return }
        
        movieController?.createMovie(with: movie)

    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
