//
//  BottomGreenStripView.swift
//  Blinkit
//
//  Created by Ayush Goyal on 09/09/24.
//

import UIKit

class BottomGreenStripView: UIView {
        
    private var categoryBackgroundImageView: UIView!
    private var categoryImageView: UIImageView!
    private var textLabel: UILabel!
    private var scrollIconView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradientBackground()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(categoryImage: UIImage, text: String, icon: UIImage) {
        super.init(frame: .zero)
        setupGradientBackground()
        setupUI(categoryImage: categoryImage, text: text, icon: icon)
    }
    
    private func setupUI(categoryImage: UIImage = UIImage(), text: String = "", icon: UIImage = UIImage()) {
        
        categoryBackgroundImageView = UIView()
        categoryBackgroundImageView.contentMode = .scaleAspectFill
        categoryBackgroundImageView.backgroundColor = .darkGray.withAlphaComponent(0.1)
        categoryBackgroundImageView.layer.cornerRadius = 40 // Assuming width/height = 80
        categoryBackgroundImageView.layer.masksToBounds = true
        categoryBackgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(categoryBackgroundImageView)
        
        categoryImageView = UIImageView(image: categoryImage)
        categoryImageView.contentMode = .scaleAspectFill
        categoryImageView.layer.masksToBounds = true
        categoryImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(categoryImageView)

        textLabel = UILabel()
        textLabel.text = text
        textLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textLabel.textColor = .black
        textLabel.textAlignment = .center
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textLabel)

        scrollIconView = UIImageView(image: icon)
        scrollIconView.contentMode = .scaleAspectFit
        scrollIconView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollIconView)

        NSLayoutConstraint.activate([
            
            scrollIconView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            scrollIconView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            scrollIconView.widthAnchor.constraint(equalToConstant: 24),
            scrollIconView.heightAnchor.constraint(equalToConstant: 24),
            
            textLabel.topAnchor.constraint(equalTo: scrollIconView.bottomAnchor, constant: 10),
            textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            textLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            categoryBackgroundImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            categoryBackgroundImageView.topAnchor.constraint(equalTo: textLabel.topAnchor, constant: 20),
            categoryBackgroundImageView.widthAnchor.constraint(equalToConstant: 80),
            categoryBackgroundImageView.heightAnchor.constraint(equalToConstant: 80),
            
            categoryImageView.centerXAnchor.constraint(equalTo: categoryBackgroundImageView.centerXAnchor),
            categoryImageView.topAnchor.constraint(equalTo: categoryBackgroundImageView.topAnchor),
            categoryImageView.widthAnchor.constraint(equalTo: categoryBackgroundImageView.widthAnchor, multiplier: 0.9),
            categoryImageView.heightAnchor.constraint(equalTo: categoryImageView.widthAnchor),
        ])
    }
    
    func updateData(name: String, image: UIImage) {
        self.textLabel.text = name
        self.categoryImageView.image = image
    }
    
    private func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.3)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let gradientLayer = self.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = self.bounds
        }
    }
}
