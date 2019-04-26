//
//  MovieController.swift
//  ios-sprint1-challenge-chrisprice
//
//  Created by Chris Price on 4/26/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = [Movie]()
    
    init() {
        createMovie(with: "Die Hard")
    }
    
    func createMovie(with name: String) {
        let movie = Movie(name: name)
        
        movies.append(movie)
    }

}
