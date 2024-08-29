//
//  CellCustomTableViewCell.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 25/08/24.
//

import UIKit

class CellCustomTableViewCell: UITableViewCell {
    
    var titleCurso: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Cookies-Regular", size: 25)
        label.textColor = .darkText
        label.textAlignment = .left
        return label
    }()
    var descripcionCurso: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Cookies-Regular", size: 25)
        label.textColor = .darkText
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    var imageCurso: UIImageView = {
        let img : UIImageView = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    static let cellSugerenciaCurso = "cellCursoTable"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addcomponets()
        setupViewContainter()

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addcomponets(){
        addSubview(titleCurso)
        addSubview(descripcionCurso)
        addSubview(imageCurso)


    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            
            titleCurso.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleCurso.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleCurso.widthAnchor.constraint(equalToConstant: 100),
            
            descripcionCurso.topAnchor.constraint(equalTo: titleCurso.bottomAnchor),
            descripcionCurso.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descripcionCurso.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            descripcionCurso.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            imageCurso.leadingAnchor.constraint(equalTo: titleCurso.trailingAnchor, constant: 100),
            
            imageCurso.centerYAnchor.constraint(equalTo: centerYAnchor),          imageCurso.widthAnchor.constraint(equalToConstant: 50),
            imageCurso.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
}
