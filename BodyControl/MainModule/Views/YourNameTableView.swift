//
//  TableView.swift
//  BodyControl
//
//  Created by Alex on 11.10.2022.
//

import UIKit

class YourNameTableView: UITableView {
    
    private let idTableViewCell = "idTableViewCell"
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)

        setupViews()
        setDelegates()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setDelegates() {
        delegate = self
        dataSource = self
    }
    
    private func setupViews() {
         
        register(WorkoutTableViewCell.self, forCellReuseIdentifier: idTableViewCell)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configure() {
        
        backgroundColor = .none
        separatorStyle = .none
        bounces = false
        showsVerticalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
        delaysContentTouches = false
    }
}

extension YourNameTableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idTableViewCell, for: indexPath) as? WorkoutTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

extension YourNameTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

