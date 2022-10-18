//
//  RepsOrTimer.swift
//  BodyControl
//
//  Created by Alex on 18.10.2022.
//

import UIKit

class RepsOrTimer: UIView {

    private let setsLabel: UILabel = {
        let label = UILabel()
        label.text = "Sets"
        label.tintColor = .specialGray
        label.font = .robotoMedium16()
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let namberLabelSets: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.tintColor = .specialGray
        label.font = .robotoBold20()
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var stackSetsView = UIStackView()
    
    private let setSliders: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.maximumTrackTintColor = .specialLightBrown
        slider.minimumTrackTintColor = .specialGreen
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderChange), for: .valueChanged)
        return slider
    }()
    
    private let chooseRepeat = UILabel(text: "Choose repeat or tomer")
    
    private let repsLabel: UILabel = {
        let label = UILabel()
        label.text = "Reps"
        label.font = .robotoMedium16()
        label.tintColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let namberLabelReps: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.tintColor = .specialGray
        label.font = .robotoBold20()
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var stackRepsView = UIStackView()
    
    private let setSlidersReps: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.maximumTrackTintColor = .specialLightBrown
        slider.minimumTrackTintColor = .specialGreen
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderChange), for: .valueChanged)
        return slider
    }()
    
    private let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "Timer"
        label.font = .robotoMedium16()
        label.tintColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let namberLabelTimer: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.tintColor = .specialGray
        label.font = .robotoBold20()
        label .translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var stackTimerView = UIStackView()
    
    private let setSlidersTimers: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.maximumTrackTintColor = .specialLightBrown
        slider.minimumTrackTintColor = .specialGreen
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderChange), for: .valueChanged)
        return slider
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
        backgroundColor = .specialBrown
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false

        stackSetsView = UIStackView(arrangedSubviews: [setsLabel, namberLabelSets],
                                    spacing: 10)
        addSubview(stackSetsView)
        addSubview(setSliders)
        addSubview(chooseRepeat)
        
        stackRepsView = UIStackView(arrangedSubviews: [repsLabel, namberLabelReps],
                                    spacing: 10)
        addSubview(stackRepsView)
        addSubview(setSlidersReps)
        
        stackTimerView = UIStackView(arrangedSubviews: [timerLabel, namberLabelTimer],
                                    spacing: 10)
        addSubview(stackTimerView)
        addSubview(setSlidersTimers)
    }
    
    @objc func sliderChange() {
        print(setSliders.value)
    }
}

extension RepsOrTimer {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            
            stackSetsView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            stackSetsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackSetsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackSetsView.heightAnchor.constraint(equalToConstant: 30),
            
            setSliders.topAnchor.constraint(equalTo: stackSetsView.bottomAnchor, constant: 10),
            setSliders.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            setSliders.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            chooseRepeat.topAnchor.constraint(equalTo: setSliders.bottomAnchor, constant: 10),
            chooseRepeat.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            stackRepsView.topAnchor.constraint(equalTo: chooseRepeat.bottomAnchor, constant: 10),
            stackRepsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackRepsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackRepsView.heightAnchor.constraint(equalToConstant: 30),
            
            setSlidersReps.topAnchor.constraint(equalTo: stackRepsView.bottomAnchor, constant: 10),
            setSlidersReps.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            setSlidersReps.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            stackTimerView.topAnchor.constraint(equalTo: setSlidersReps.bottomAnchor, constant: 10),
            stackTimerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackTimerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackTimerView.heightAnchor.constraint(equalToConstant: 30),
            
            setSlidersTimers.topAnchor.constraint(equalTo: stackTimerView.bottomAnchor, constant: 10),
            setSlidersTimers.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            setSlidersTimers.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }
}
