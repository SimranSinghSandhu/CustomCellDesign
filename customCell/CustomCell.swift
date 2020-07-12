//
//  CustomCell.swift
//  customCell
//
//  Created by Simran Singh Sandhu on 12/07/20.
//  Copyright © 2020 Simran Singh Sandhu. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabelView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemTeal
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dateLabelView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemOrange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Peanut Butter Cream"
        label.textColor = UIColor.black
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "7 Days"
        label.textColor = UIColor.black
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor.clear
        
        addSubview(mainView)
        mainView.addSubview(nameLabelView)
        mainView.addSubview(dateLabelView)
        addSubview(nameLabel)
        addSubview(dateLabel)
        settingConstraints()
        
        settingViews(view: nameLabelView)
        settingViews(view: dateLabelView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func settingViews(view: UIView) {
        view.layer.cornerRadius = 20 // Higher Value will make the Corners Round.
        view.layer.shadowColor = UIColor.black.cgColor // Color of Shadow
        view.layer.shadowRadius = 4 // Radium of Shadow (Change backgrund color of Cell to see Changes)
        view.layer.shadowOffset = .zero // Will disribute Shadow around View Equally
        view.layer.shadowOpacity = 0.75 // Visibility of Shadow.
    }
    
    private func settingConstraints() {
        mainView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        mainView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        
        nameLabelView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true
        nameLabelView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20).isActive = true
        nameLabelView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10).isActive = true
        nameLabelView.widthAnchor.constraint(equalToConstant: frame.width / 1.25).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: nameLabelView.topAnchor, constant: 0).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: nameLabelView.bottomAnchor, constant: 0).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: nameLabelView.leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: nameLabelView.trailingAnchor, constant: -20).isActive = true
        
        dateLabelView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true
        dateLabelView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20).isActive = true
        dateLabelView.leadingAnchor.constraint(equalTo: nameLabelView.trailingAnchor, constant: 20).isActive = true
        dateLabelView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: dateLabelView.topAnchor, constant: 0).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: dateLabelView.bottomAnchor, constant: 0).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: dateLabelView.leadingAnchor, constant: 0).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: dateLabelView.trailingAnchor, constant: 0).isActive = true
    
    }   
}
