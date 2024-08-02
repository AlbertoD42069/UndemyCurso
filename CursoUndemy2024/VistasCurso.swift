//
//  VistasCurso.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 02/08/24.
//

import UIKit

class VistasCurso: UIView {
    
    private let vista: UIView = {
        let view : UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private let imagen : UIImageView = {
        let img : UIImageView = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .systemTeal
        return img
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(vista)
        addSubview(imagen)
        NSLayoutConstraint.activate([
            vista.safeAreaLayoutGuide.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            vista.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),
            vista.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5),
            vista.heightAnchor.constraint(equalToConstant: 150),
            
            imagen.topAnchor.constraint(equalTo: vista.bottomAnchor, constant: 5),
            imagen.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            imagen.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -5),
            imagen.heightAnchor.constraint(equalToConstant: 150),
            

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
