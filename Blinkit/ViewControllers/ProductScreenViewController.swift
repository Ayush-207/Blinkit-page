import UIKit

class ProductScreenViewController: UIViewController {
    
    private var productsVM: ProductScreenViewModel!
    
    private var selectedCategoryIndex = 0
    private var scrollDirectionTop: Bool?
    
    private let categoryTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let productCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsVM = ProductScreenViewModel()
        setupUI()
        loadData()
        reloadProductList()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        let verticalPadding: CGFloat = 8.0

        view.addSubview(categoryTableView)
        categoryTableView.separatorStyle = .none
        categoryTableView.dataSource = self
        categoryTableView.delegate = self

        view.addSubview(productCollectionView)
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        productCollectionView.alwaysBounceVertical = true

        categoryTableView.register(CategoryCell.self, forCellReuseIdentifier: "CategoryCell")
        productCollectionView.register(ProductCell.self, forCellWithReuseIdentifier: "ProductCell")

        NSLayoutConstraint.activate([
            categoryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoryTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            categoryTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -verticalPadding),
            categoryTableView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),

            productCollectionView.leadingAnchor.constraint(equalTo: categoryTableView.trailingAnchor),
            productCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            productCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -verticalPadding),
            productCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            productCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
        
        if let layout = productCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let availableWidth = view.frame.width * 0.85 - layout.minimumInteritemSpacing
            let itemsPerRow: CGFloat = 2
            let totalSpacing: CGFloat = (itemsPerRow - 1) * layout.minimumInteritemSpacing
            let itemWidth = (availableWidth - totalSpacing) / itemsPerRow
            layout.itemSize = CGSize(width: itemWidth, height: 265)
        }
    }
    
    private func loadData() {
        productsVM.fetchCategories()
        productsVM.fetchProducts(with: selectedCategoryIndex)
    }
    
    private func reloadProductList() {
        productCollectionView.reloadData()
        categoryTableView.reloadData()
        productCollectionView.setContentOffset(.zero, animated: false)
    }
    
    private func updateSelectedCategory(to index: Int) {
        if index >= 0 && index < productsVM.categories.count {
            selectedCategoryIndex = index
            loadData()
            reloadProductList()
        }
    }
}

extension ProductScreenViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsVM.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        let categories = productsVM.categories
        cell.configure(with: Category(name: categories[indexPath.row].name, image: categories[indexPath.row].image), isSelected: indexPath.row == selectedCategoryIndex)
        cell.selectionStyle = .none
        cell.layer.borderWidth = .leastNonzeroMagnitude
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        updateSelectedCategory(to: indexPath.row)
    }
}

extension ProductScreenViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        let scrollViewHeight = scrollView.frame.height
       
        if offsetY < 0 {
            scrollDirectionTop = true
        } else if offsetY > contentHeight - scrollViewHeight {
            scrollDirectionTop = false
        } else {
            scrollDirectionTop = nil
        }
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
        guard let scrollDirection = scrollDirectionTop else { return }
        let nextIndex = scrollDirection ? selectedCategoryIndex - 1 : selectedCategoryIndex + 1
        guard nextIndex >= 0 && nextIndex < productsVM.categories.count else {
                return
        }
        updateSelectedCategory(to: nextIndex)
        scrollView.setContentOffset(.zero, animated: true)
    }
}

extension ProductScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsVM.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let products = productsVM.products
        cell.configure(with: products[indexPath.row])
        return cell
    }
}

