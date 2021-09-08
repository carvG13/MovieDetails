//
//  ViewController.swift
//  MovieDetails
//
//  Created by Gustavo on 06/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "MovieHeaderCell",
                                      bundle: nil), forCellReuseIdentifier: "MovieHeaderCell")
        
        self.tableView.register(UINib(nibName: "MovieCell",
                                      bundle: nil), forCellReuseIdentifier: "MovieCell")
        
        
        self.tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieHeaderCell") as! MovieHeaderCell
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else {
            return 80
        }
    }
}

