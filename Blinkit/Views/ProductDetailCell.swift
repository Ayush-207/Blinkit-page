//
//  ProductDetailCell.swift
//  Blinkit
//
//  Created by Arsh Poddar on 11/09/24.
//

import UIKit

class ProductDetailCell: UICollectionViewCell {
    
    private var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    private var productHeadingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .darkGray
        label.text = "SweetCorn - Packet"
        return label
    }()
    
    private let deliveryTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textColor = .darkGray
        label.text = "8 MINS"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let deliveryTimeIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "clock"))
        imageView.tintColor = .systemGreen
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let quantityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.textColor = .darkGray
        label.text = "150g - 250g"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let discountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = .systemBlue
        label.text = "37%"
        label.translatesAutoresizingMaskIntoConstraints = false
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        label.layer.insertSublayer(gradientLayer, at: 0)
        return label
    }()
    
    private let finalPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .black
        label.text = "₹57"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let originalPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 9)
        label.textColor = .gray
        label.attributedText = NSAttributedString(string: "MRP 80", attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI(){
        
        self.layer.cornerRadius = 10
        self.backgroundColor = .white
        addSubview(containerView)
        containerView.addSubview(productHeadingLabel)
        containerView.addSubview(deliveryTimeIcon)
        containerView.addSubview(deliveryTimeLabel)
        containerView.addSubview(quantityLabel)
        containerView.addSubview(originalPriceLabel)
        containerView.addSubview(finalPriceLabel)
        containerView.addSubview(discountLabel)

        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            productHeadingLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            productHeadingLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            productHeadingLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 5),
            
            deliveryTimeIcon.topAnchor.constraint(equalTo: productHeadingLabel.bottomAnchor, constant: 4),
            deliveryTimeIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            deliveryTimeIcon.widthAnchor.constraint(equalToConstant: 9),
            deliveryTimeIcon.heightAnchor.constraint(equalToConstant: 9),
            
            
            deliveryTimeLabel.leadingAnchor.constraint(equalTo: deliveryTimeIcon.trailingAnchor, constant: 4),
            deliveryTimeLabel.topAnchor.constraint(equalTo: productHeadingLabel.bottomAnchor, constant: 4),

            
            discountLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5),
            discountLabel.leadingAnchor.constraint(equalTo: finalPriceLabel.trailingAnchor, constant: 4),
            
            finalPriceLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5),
            finalPriceLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            
            originalPriceLabel.bottomAnchor.constraint(equalTo: finalPriceLabel.topAnchor, constant: -5),
            originalPriceLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            
            quantityLabel.bottomAnchor.constraint(equalTo: originalPriceLabel.topAnchor, constant: -5),
            quantityLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 5),
            
//            finalPriceLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
