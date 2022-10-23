//
//  StartWorkoutViewController.swift
//  BodyControl
//
//  Created by Alex on 23.10.2022.
//

import UIKit

class StartWorkoutViewController: UIViewController {
    
    private let startWorkoutLabel = UILabel(text: "START WORKOUT", font: .robotoMedium24(), textColor: .specialGray)
    
    private let closeButton = CloseButton(type: .system)
    
    private let frameImageView: UIImageView = {
        let frameImage = UIImageView()
        frameImage.image = UIImage(named: "Frame")
        frameImage.translatesAutoresizingMaskIntoConstraints = false
        return frameImage
    }()
    
    private let detailsView = DetailViews()
    private let finishButton = GreenButton(text: "FINISH")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstrains()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        view.addSubview(startWorkoutLabel)
        view.addSubview(closeButton)
        view.addSubview(frameImageView)
        view.addSubview(detailsView)
        view.addSubview(finishButton)
    }
}

extension StartWorkoutViewController {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            startWorkoutLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            startWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: startWorkoutLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 33),
            closeButton.widthAnchor.constraint(equalToConstant: 33),
            
            frameImageView.topAnchor.constraint(equalTo: startWorkoutLabel.bottomAnchor, constant: 30),
            frameImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            detailsView.topAnchor.constraint(equalTo: frameImageView.bottomAnchor, constant: 20),
            detailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            detailsView.heightAnchor.constraint(equalToConstant: 280),
            
            finishButton.topAnchor.constraint(equalTo: detailsView.bottomAnchor, constant: 20),
            finishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            finishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            finishButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
