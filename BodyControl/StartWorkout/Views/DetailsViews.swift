//
//  DetailsViews.swift
//  BodyControl
//
//  Created by Alex on 23.10.2022.
//

import UIKit

class DetailViews: UIView {
    
    private let detailsLabel = UILabel(text: "Details")
    
    private let detailsView: UIView = {
        let detailsView = UIView()
        detailsView.backgroundColor = .specialBrown
        detailsView.layer.cornerRadius = 10
        detailsView.translatesAutoresizingMaskIntoConstraints = false
        return detailsView
    }()

    private let bicepsLabel = UILabel(text: "Biceps", font: .robotoMedium22(), textColor: .specialGray)
    
    private let setsLabel = UILabel(text: "Sets", font: .robotoMedium18(), textColor: .specialGray)
    
    private let setsNumberLabel = UILabel(text: "0", font: .robotoMedium24(), textColor: .specialGray)
    
    private let repsLabel = UILabel(text: "Reps", font: .robotoMedium18(), textColor: .specialGray)
    
    private let repsNumberLabel = UILabel(text: "0", font: .robotoMedium24(), textColor: .specialGray)
    
    private var stackView = UIStackView()
    
    private let nextSetsButton: UIButton = {
        let button = UIButton()
        button.setTitle("NEXT SET", for: .normal)
        button.backgroundColor = .specialYellow
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        
        addSubview(detailsLabel)
        addSubview(detailsView)
        addSubview(bicepsLabel)
        
        let labelsStackViewS = UIStackView(arrangedSubviews: [setsLabel, setsNumberLabel],
                                          axis: .horizontal,
                                          spacing: 10)
        labelsStackViewS.distribution = .equalSpacing
        
        let labelsStackViewR = UIStackView(arrangedSubviews: [repsLabel, repsNumberLabel],
                                          axis: .horizontal,
                                          spacing: 10)
        labelsStackViewR.distribution = .equalSpacing
        stackView = UIStackView(arrangedSubviews: [labelsStackViewS, labelsStackViewR],
                                axis: .vertical,
                                spacing: 10)
        addSubview(stackView)
        addSubview(nextSetsButton)
    }
}
extension DetailViews {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            detailsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            detailsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            detailsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            detailsView.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 3),
            detailsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            detailsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            detailsView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            bicepsLabel.topAnchor.constraint(equalTo: detailsView.topAnchor, constant: 15),
            bicepsLabel.centerXAnchor.constraint(equalTo: detailsView.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: bicepsLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: detailsView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: detailsView.trailingAnchor, constant: -20),
            
            nextSetsButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            nextSetsButton.centerXAnchor.constraint(equalTo: detailsView.centerXAnchor),
            nextSetsButton.leadingAnchor.constraint(equalTo: detailsView.leadingAnchor, constant: 20),
            nextSetsButton.trailingAnchor.constraint(equalTo: detailsView.trailingAnchor, constant: -20),
            nextSetsButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
