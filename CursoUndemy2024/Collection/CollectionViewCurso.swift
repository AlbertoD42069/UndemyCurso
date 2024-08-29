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
        let layout = UICollectionViewLayout()
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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
