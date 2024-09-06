import UIKit

class ProductCell: UICollectionViewCell {
    
    private let productImageBackgroundView: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .lightGray.withAlphaComponent(0.1)
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let quantityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textColor = .darkGray
        label.backgroundColor = .lightGray.withAlphaComponent(0.1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textColor = .darkGray
        label.backgroundColor = .lightGray.withAlphaComponent(0.1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let deliveryTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 9)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let deliveryTimeIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "clock"))
        imageView.tintColor = .systemGreen
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let discountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 9)
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let finalPriceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .black
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
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("ADD", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        button.setTitleColor(.systemGreen, for: .normal)
        button.layer.borderColor = UIColor.systemGreen.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.layer.cornerRadius = 8
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 0.5
        contentView.addSubview(productImageBackgroundView)
        contentView.addSubview(productImageView)
        contentView.addSubview(quantityLabel)
        contentView.addSubview(typeLabel)
        contentView.addSubview(productNameLabel)
        contentView.addSubview(deliveryTimeIcon)
        contentView.addSubview(deliveryTimeLabel)
        contentView.addSubview(discountLabel)
        contentView.addSubview(finalPriceLabel)
        contentView.addSubview(originalPriceLabel)
        contentView.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            productImageBackgroundView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            productImageBackgroundView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            productImageBackgroundView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.9),
            productImageBackgroundView.heightAnchor.constraint(equalTo: productImageBackgroundView.widthAnchor, multiplier: 1.1),
            
            productImageView.topAnchor.constraint(equalTo: productImageBackgroundView.topAnchor, constant: 8),
            productImageView.centerXAnchor.constraint(equalTo: productImageBackgroundView.centerXAnchor),
            productImageView.widthAnchor.constraint(equalTo: productImageBackgroundView.widthAnchor, multiplier: 0.9),
            productImageView.heightAnchor.constraint(equalTo: productImageView.widthAnchor),
            productImageView.bottomAnchor.constraint(equalTo: addButton.topAnchor),
            
            addButton.bottomAnchor.constraint(equalTo: productImageBackgroundView.bottomAnchor),
            addButton.trailingAnchor.constraint(equalTo: productImageBackgroundView.trailingAnchor, constant: -2),
            addButton.widthAnchor.constraint(equalToConstant: 60),
            addButton.heightAnchor.constraint(equalToConstant: 25),

            quantityLabel.topAnchor.constraint(equalTo: productImageBackgroundView.bottomAnchor, constant: 4),
            quantityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            
            typeLabel.centerYAnchor.constraint(equalTo: quantityLabel.centerYAnchor),
            typeLabel.leadingAnchor.constraint(equalTo: quantityLabel.trailingAnchor, constant: 8),
            
            productNameLabel.topAnchor.constraint(equalTo: quantityLabel.bottomAnchor, constant: 4),
            productNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            productNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            deliveryTimeIcon.topAnchor.constraint(equalTo: productNameLabel.bottomAnchor, constant: 4),
            deliveryTimeIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            deliveryTimeIcon.widthAnchor.constraint(equalToConstant: 9),
            deliveryTimeIcon.heightAnchor.constraint(equalToConstant: 9),
            
            deliveryTimeLabel.centerYAnchor.constraint(equalTo: deliveryTimeIcon.centerYAnchor),
            deliveryTimeLabel.leadingAnchor.constraint(equalTo: deliveryTimeIcon.trailingAnchor, constant: 4),
            
            discountLabel.topAnchor.constraint(equalTo: deliveryTimeLabel.bottomAnchor, constant: 4),
            discountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            discountLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            finalPriceLabel.topAnchor.constraint(equalTo: discountLabel.bottomAnchor, constant: 4),
            finalPriceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            
            originalPriceLabel.topAnchor.constraint(equalTo: finalPriceLabel.topAnchor),
            originalPriceLabel.leadingAnchor.constraint(equalTo: finalPriceLabel.trailingAnchor, constant: 4),
            originalPriceLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -8)
        ])
    }
    
    func configure(with product: Product) {
        productImageView.image = UIImage(named: product.image)
        quantityLabel.text = product.quantity
        typeLabel.text = product.type
        productNameLabel.text = product.name
        deliveryTimeLabel.text = product.deliveryTime
        discountLabel.text = product.discount
        finalPriceLabel.text = product.finalPrice
        originalPriceLabel.attributedText = NSAttributedString(string: product.originalPrice, attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue])
    }
}
