//
//  CategoryHeadingCell.swift
//  Blinkit
//
//  Created by Arsh Poddar on 11/09/24.
//

import UIKit

class CategoryHeadingCell: UICollectionViewCell {
    
    private var categoryLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 9)
        label.textColor = .systemGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private var subCategoryLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 9)
        label.textColor = .systemGreen
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var arrowIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "house")
        image.tintColor = .systemGreen
        image.translatesAutoresizingMaskIntoConstraints = true
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    private func setupUI(){
        addSubview(categoryLabel)
        addSubview(arrowIcon)
        addSubview(subCategoryLabel)
        
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: self.topAnchor),
            categoryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            arrowIcon.topAnchor.constraint(equalTo: self.topAnchor),
            arrowIcon.leadingAnchor.constraint(equalTo: categoryLabel.trailingAnchor, constant: 5),
            arrowIcon.widthAnchor.constraint(equalToConstant: 9),
            arrowIcon.heightAnchor.constraint(equalToConstant: 9),
            
            subCategoryLabel.topAnchor.constraint(equalTo: self.topAnchor),
            subCategoryLabel.leadingAnchor.constraint(equalTo: arrowIcon.trailingAnchor, constant: 5),
        ])
    }
    
    func configure(category: String, subCategory: String){
        categoryLabel.text = category
        subCategoryLabel.text = subCategory
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
