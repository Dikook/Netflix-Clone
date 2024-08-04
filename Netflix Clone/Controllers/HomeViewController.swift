//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Diar Orynbek on 02.08.2024.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTable: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(CellViewController.self, forCellReuseIdentifier: CellViewController.reuseID)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        view.addSubview(homeFeedTable)
        funcLayout()
    }
    
    private func funcLayout(){
        homeFeedTable.frame = view.bounds
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellViewController.reuseID, for: indexPath)
        
        return cell
    }
    
}
