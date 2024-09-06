//
//  ProductCategoryView.swift
//  Blinkit
//
//  Created by Ayush Goyal on 05/09/24.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    private let sliderView: UIView = {
           let view = UIView()
           view.backgroundColor = .systemGreen
           view.layer.cornerRadius = 10
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
    
    private let categoryBackgroundImageView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray.withAlphaComponent(0.1)
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0 // Allow multiple lines
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleSelected(_ selected: Bool) {
        if selected {
            categoryBackgroundImageView.backgroundColor = .systemBlue.withAlphaComponent(0.1)
            sliderView.isHidden = false
            animateImageView(bigger: true)
        } else {
            categoryBackgroundImageView.backgroundColor = .lightGray.withAlphaComponent(0.1)
            sliderView.isHidden = true
            animateImageView(bigger: false)
        }
    }
    
    
    private func animateImageView(bigger: Bool){
        UIView.animate(withDuration: 0.3) {
            self.categoryImageView.transform = bigger ? CGAffineTransform(scaleX: 1.2, y: 1.2) : CGAffineTransform.identity
        }
    }
    
    private func setupUI() {
        contentView.addSubview(categoryBackgroundImageView)
        contentView.addSubview(categoryImageView)
        contentView.addSubview(categoryLabel)
        contentView.addSubview(sliderView)
        NSLayoutConstraint.activate([
            
            categoryBackgroundImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            categoryBackgroundImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            categoryBackgroundImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8),
            categoryBackgroundImageView.heightAnchor.constraint(equalTo: categoryBackgroundImageView.widthAnchor),
            
            categoryImageView.centerXAnchor.constraint(equalTo: categoryBackgroundImageView.centerXAnchor),
            categoryImageView.centerYAnchor.constraint(equalTo: categoryBackgroundImageView.centerYAnchor),
            categoryImageView.widthAnchor.constraint(equalTo: categoryBackgroundImageView.widthAnchor, multiplier: 0.75),
            categoryImageView.heightAnchor.constraint(equalTo: categoryImageView.widthAnchor),
            
            categoryLabel.topAnchor.constraint(equalTo: categoryBackgroundImageView.bottomAnchor, constant: 4),
            categoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            categoryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            sliderView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            sliderView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.05),
            sliderView.topAnchor.constraint(equalTo: contentView.topAnchor),
            sliderView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
        contentView.backgroundColor = .clear
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        categoryBackgroundImageView.layer.cornerRadius = categoryBackgroundImageView.frame.width / 2
    }
    
    func configure(with category: Category, isSelected: Bool) {
        categoryImageView.image = UIImage(named: category.image)
        categoryLabel.text = category.name
        
        handleSelected(isSelected)
    }
}


