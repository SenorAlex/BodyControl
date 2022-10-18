//
//  DateAndRepeatView.swift
//  BodyControl
//
//  Created by Alex on 18.10.2022.
//

import UIKit

class DateAndRepeatView: UIView {
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.font = .robotoMedium16()
        label.tintColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repeatLabel: UILabel = {
        let label = UILabel()
        label.text = "Repeat every 7 days"
        label.font = .robotoMedium16()
        label.tintColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        picker.tintColor = .specialGreen
        //picker.subviews[0].subviews[0].subviews[0].alpha = 0
        picker.translatesAutoresizingMaskIntoConstraints = false
        return picker
    }()
    
    private let testSwitch: UISwitch = {
        let testSwitch = UISwitch()
        testSwitch.isOn = true
        testSwitch.onTintColor = .specialGreen
        testSwitch.translatesAutoresizingMaskIntoConstraints = false
        return testSwitch
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .specialBrown
        layer.cornerRadius = 10
        
        addSubview(dateLabel)
        addSubview(repeatLabel)
        addSubview(datePicker)
        addSubview(testSwitch)
    }
}

extension DateAndRepeatView {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            
            dateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            dateLabel.heightAnchor.constraint(equalToConstant: 30),
            
            repeatLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            repeatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            repeatLabel.heightAnchor.constraint(equalToConstant: 30),
            
            datePicker.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor),
            datePicker.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            testSwitch.centerYAnchor.constraint(equalTo: repeatLabel.centerYAnchor),
            testSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
