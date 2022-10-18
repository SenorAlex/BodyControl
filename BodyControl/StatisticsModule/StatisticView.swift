//
//  StatisticView.swift
//  BodyControl
//
//  Created by Alex on 13.10.2022.
//

import UIKit

class StatisticView: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.textColor = .specialGray
        label.font = .robotoMedium24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedcontrol = UISegmentedControl(items: ["Week", "Month"])
        segmentedcontrol.selectedSegmentIndex = 0
        segmentedcontrol.backgroundColor = .specialGreen
        segmentedcontrol.selectedSegmentTintColor = .specialYellow
        let font = UIFont(name: "Roboto-Medium", size: 16)
        segmentedcontrol.setTitleTextAttributes([.font : font as Any,
                                                 .foregroundColor : UIColor.white], for: .normal)
        segmentedcontrol.setTitleTextAttributes([.font : font as Any,
                                                 .foregroundColor : UIColor.specialGray], for: .selected)
        segmentedcontrol.addTarget(self, action: #selector(segmentedChange), for: .valueChanged)
        segmentedcontrol.translatesAutoresizingMaskIntoConstraints = false
        return segmentedcontrol
    }()
    
    private let exercisesLabel = UILabel(text: "Exercises")
    
    private let tableView = ExercisesTable(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstrains()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(segmentedControl)
        view.addSubview(tableView)
        view.addSubview(exercisesLabel)
    }
    
    @objc private func segmentedChange() {
        if segmentedControl.selectedSegmentIndex == 0 {
            print("Week")
        } else {
            print("Month")
        }
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            segmentedControl.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //segmentedControl.heightAnchor.constraint(equalToConstant: 40),
            
            exercisesLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 10),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            exercisesLabel.heightAnchor.constraint(equalToConstant: 30),
            
            tableView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
