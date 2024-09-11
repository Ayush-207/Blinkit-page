//
//  ProductViewController.swift
//  Blinkit
//
//  Created by Arsh Poddar on 11/09/24.
//

import UIKit

class ProductViewController: UIViewController {
    
    private var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureCompositionalLayout()
    }
    
    private func configureUI(){
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(ProductBannerCell.self, forCellWithReuseIdentifier: "ProductBannerCell")
        collectionView.register(ProductDetailCell.self, forCellWithReuseIdentifier: "ProductDetailCell")
        collectionView.register(SimilarProductsCell.self, forCellWithReuseIdentifier: "SimilarProductsCell")
        collectionView.backgroundColor = .systemBackground
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
}

extension ProductViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
    private func configureCompositionalLayout() {
        let layout = UICollectionViewCompositionalLayout {sectionIndex, _ in
            switch sectionIndex {
            case 0:
                return AppLayout.shared.getProductBannerSection()
            case 1:
                return AppLayout.shared.getProductDetailSection()
            case 2:
                return AppLayout.shared.getSimilarProducts()
            case 3:
                return AppLayout.shared.getPeopleAlsoBought()
            default:
                return AppLayout.shared.getProductBannerSection()
            }
        }
        
        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.backgroundColor = .systemIndigo.withAlphaComponent(0.1)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3;
        case 1:
            return 1;
        case 2:
            return 1;
        case 3:
            return 1;
        default:
            return 1;
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductBannerCell", for: indexPath) as! ProductBannerCell
            cell.configure(with: "sweetcorn")
            return cell;
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductDetailCell", for: indexPath) as! ProductDetailCell
            
            return cell;
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SimilarProductsCell", for: indexPath) as! SimilarProductsCell
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SimilarProductsCell", for: indexPath) as! SimilarProductsCell
            cell.configure(with: "People also bought")
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductBannerCell", for: indexPath) as! ProductBannerCell
            cell.configure(with: "sweetcorn")
            return cell;
        }
    }
    
    
}
