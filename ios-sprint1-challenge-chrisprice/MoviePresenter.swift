//
//  MoviePresenter.swift
//  ios-sprint1-challenge-chrisprice
//
//  Created by Chris Price on 4/26/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import Foundation

protocol MoviePresenter: AnyObject {
    
    var movieController: MovieController? { set get }
}
