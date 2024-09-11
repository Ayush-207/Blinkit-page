//
//  SimilarProductsCell.swift
//  Blinkit
//
//  Created by Arsh Poddar on 11/09/24.
//

import UIKit

class SimilarProductsCell: UICollectionViewCell {
    
    private var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    private var containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var productsStackView1: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var productsStackView2: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var products: [ProductCell] = []
    
    private var headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .darkGray
        label.text = "Top 10 similar products"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI(){
        self.backgroundColor = .white
        self.layer.cornerRadius = 10
        addSubview(containerView)
        containerView.addSubview(headingLabel)
        containerView.addSubview(containerStackView)
        
        containerStackView.addArrangedSubview(productsStackView1)
        containerStackView.addArrangedSubview(productsStackView2)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            headingLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            headingLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            headingLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            containerStackView.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 10),
            containerStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        ])
        
        let product = Product(name: "Hellman's real mayo", image: "mayonnaise", quantity: "150g", type: "mayonnaise", deliveryTime: "8 MINS", discount: "37%", finalPrice: "₹57", originalPrice: "MRP ₹60", category: "Mayonnaise")
        
        for _ in 0..<3 {
            let productCell = ProductCell()
            productCell.configure(with: product)
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(productCell)
            productsStackView1.addArrangedSubview(productCell)
        }
        for _ in 0..<3 {
            let productCell = ProductCell()
            productCell.configure(with: product)
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(productCell)
            productsStackView2.addArrangedSubview(productCell)
        }
    }
    
    func configure(with heading: String){
        headingLabel.text = heading
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
