//
//  CollectionViewCurso.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 28/08/24.
//

import UIKit

class CollectionViewCurso: UIView {
    
    private let viewCollection: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    private let collectionViewCustom: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = .init(width: 100, height: 100)
        let cell = UICollectionViewCell()
        let collection: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .blue
        return collection
    }()
    let continenteAmericano = ["mexico", "Estados Unidos", "guatemala", "peru", "brazil", "argentina","colombia", "venezuela","puerto rico", "belice"]
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(viewCollection)
        viewCollection.addSubview(collectionViewCustom)
        NSLayoutConstraint.activate([
            viewCollection.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            viewCollection.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),
            viewCollection.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5),
            viewCollection.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5),
            
            collectionViewCustom.topAnchor.constraint(equalTo: viewCollection.topAnchor, constant: 5),
            collectionViewCustom.leadingAnchor.constraint(equalTo: viewCollection.leadingAnchor, constant: 5),
            collectionViewCustom.trailingAnchor.constraint(equalTo: viewCollection.trailingAnchor, constant: -5),
            collectionViewCustom.bottomAnchor.constraint(equalTo: viewCollection.bottomAnchor, constant: -5),
        ])
        setupDelegateCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupDelegateCollectionView(){
        collectionViewCustom.dataSource = self
    }
}

extension CollectionViewCurso: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let model = continenteAmericano.count
        return model
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCollection = collectionViewCustom.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath) as! UICollectionViewCell
        
        return cellCollection
    }
    
    
}
