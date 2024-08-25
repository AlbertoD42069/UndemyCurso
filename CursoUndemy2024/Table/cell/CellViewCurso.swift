//
//  CellViewCurso.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 25/08/24.
//

import Foundation
import UIKit


class CellViewCurso: UITableViewCell {
    
    var sugerenciaTxt: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Cookies-Regular", size: 25)
        label.textColor = .darkText
        label.textAlignment = .left
        return label
    }()
    static let cellSugerencia = "cellCurso"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addcomponets()
        setupViewContainter()

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func addcomponets(){
        addSubview(sugerenciaTxt)

    }
    func setupViewContainter(){
        NSLayoutConstraint.activate([
            sugerenciaTxt.centerYAnchor.constraint(equalTo: centerYAnchor),
            sugerenciaTxt.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

        ])
    }
    
}
