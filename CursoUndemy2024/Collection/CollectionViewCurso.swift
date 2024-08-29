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
        layout.scrollDirection = .horizontal
        layout.itemSize = .init(width: 150, height: 150)
        layout.minimumLineSpacing = 100
        layout.minimumInteritemSpacing = 100
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 10
        let collection: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .blue
        collection.register(CursoCollectionViewCell.self, forCellWithReuseIdentifier: "CursoCollectionViewCell")
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        return collection
    }()
    let continenteAmericano = ["mexico", "Estados Unidos", "guatemala", "peru", "brazil", "argentina","colombia", "venezuela","puerto rico", "belice"]
    let continenteEuropero = ["España", "francia", "rusia", "inglaterra", "suiza", "alemania", "italia", "africa"]

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
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            let model = continenteAmericano.count
            return model
        case 1:
            let model = continenteEuropero.count
            return model
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cellCollection = collectionViewCustom.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
            cellCollection.backgroundColor = .gray
            let modeloContinenteAmericano = continenteAmericano[indexPath.row]
            var listaContinenteAmericano = UIListContentConfiguration.cell()
            listaContinenteAmericano.text = modeloContinenteAmericano
            listaContinenteAmericano.image = UIImage(systemName: "circle.fill")
            cellCollection.contentConfiguration = listaContinenteAmericano
            return cellCollection
        case 1:
            let cellCollection = collectionViewCustom.dequeueReusableCell(withReuseIdentifier: "CursoCollectionViewCell", for: indexPath) as! CursoCollectionViewCell
            cellCollection.backgroundColor = .gray
            let modeloContinenteAmericano = continenteEuropero[indexPath.row]
            cellCollection.addContinente(continente: modeloContinenteAmericano)
            return cellCollection
        default:
            let colecion = UICollectionViewCell()
            return colecion
        }
        
    }
    
    
}
