//
//  CursoCollectionViewCell.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 28/08/24.
//

import UIKit

class CursoCollectionViewCell: UICollectionViewCell {
    
    private let titleLabelCustom: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    private let imageCustom: UIImageView = {
        let image :UIImageView = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabelCustom)
        addSubview(imageCustom)
        
        NSLayoutConstraint.activate([
            titleLabelCustom.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleLabelCustom.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            titleLabelCustom.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5),
            
            imageCustom.topAnchor.constraint(equalTo: titleLabelCustom.bottomAnchor, constant: 5),
            //imageCustom.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            //imageCustom.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5),
            
            imageCustom.widthAnchor.constraint(equalToConstant: 50),
            imageCustom.heightAnchor.constraint(equalToConstant: 50),

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addContinente(continente: String){
        let imageCircle = UIImage(systemName: "circle")
        titleLabelCustom.text = continente
        imageCustom.image = imageCircle
    }
}
