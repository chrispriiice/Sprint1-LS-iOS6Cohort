//
//  MoviesTabBarViewController.swift
//  ios-sprint1-challenge-chrisprice
//
//  Created by Chris Price on 4/26/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

    let movieController = MovieController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for childViewController in children {
            
            if let childViewController = childViewController as? MoviePresenter {
                childViewController.movieController = movieController
            }
        }
  
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
