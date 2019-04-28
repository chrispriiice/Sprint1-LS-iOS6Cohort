//
//  MoviesTableTableViewController.swift
//  ios-sprint1-challenge-chrisprice
//
//  Created by Chris Price on 4/26/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

protocol MovieSelectionDelegate: AnyObject {
    func movieWasSelected(movie: Movie)
}

class MoviesTableViewController: UITableViewController, MoviePresenter {
    var movieController: MovieController?
    weak var delegate: MovieSelectionDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return movieController?.movies.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

       let movie = movieController?.movies[indexPath.row]

        cell.textLabel?.text = movie?.name
        
        return cell
    }

   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let movie = movieController?.movies[indexPath.row] else { return }
        
        delegate?.movieWasSelected(movie: movie)
    }

}
