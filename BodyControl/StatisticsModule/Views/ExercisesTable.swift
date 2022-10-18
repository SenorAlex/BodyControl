//
//  ExercisesTable.swift
//  BodyControl
//
//  Created by Alex on 14.10.2022.
//

import UIKit

class ExercisesTable: UITableView {
    
    private let idStatisticTableViewCell = "idStatisticTableViewCell"
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        setDelegates()
        configuration()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setDelegates() {
        delegate = self
        dataSource = self
    }
    
    private func configuration() {
        backgroundColor = .none
        separatorStyle = .none
        bounces = false
        showsVerticalScrollIndicator = false
    }
    
    private func setupViews() {
        
        register(StatisticTableViewCell.self, forCellReuseIdentifier: idStatisticTableViewCell)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}

extension ExercisesTable: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: idStatisticTableViewCell, for: indexPath) as? StatisticTableViewCell else {
            
            return UITableViewCell()
        }
        return cell
    }
}

extension ExercisesTable: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        65
    }
}
