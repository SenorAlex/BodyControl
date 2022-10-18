//
//  WeatherView.swift
//  BodyControl
//
//  Created by Alex on 10.10.2022.
//

import UIKit

class WeatherView: UIView {
    
    private let weatherLabel: UILabel = {
        let weather = UILabel()
        weather.text = "Солнечно"
        weather.textColor = .specialGray
        weather.font = .robotoMedium18()
        weather.adjustsFontSizeToFitWidth = true
        weather.translatesAutoresizingMaskIntoConstraints = false
        return weather
    }()
    
    private let moreLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.textColor = .specialGray
        label.font = .robotoMedium14()
        label.numberOfLines = 2
        label.minimumScaleFactor = 0.5
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let sunImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "sun")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 10
        addShadowOnView()
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(weatherLabel)
        addSubview(moreLabel)
        addSubview(sunImage)
    }
}

extension WeatherView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            weatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherLabel.heightAnchor.constraint(equalToConstant: 20),
            weatherLabel.trailingAnchor.constraint(equalTo: sunImage.leadingAnchor, constant: -10),
            
            moreLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 0),
            moreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            moreLabel.trailingAnchor.constraint(equalTo: sunImage.leadingAnchor, constant: -10),
            moreLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            sunImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            sunImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            sunImage.heightAnchor.constraint(equalToConstant: 60),
            sunImage.widthAnchor.constraint(equalToConstant: 60)
        ])
    }
}
