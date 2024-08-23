//
//  ViewNavegacion.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 21/08/24.
//

import UIKit

protocol ViewNavegacionProtocol: AnyObject {
    func goNegro()
    func goRojo()
    func goAzul()
}

class ViewNavegacion: UIView {
    
    private let buttonNegro: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Negro", for: .normal)
        btn.addTarget(self, action: #selector(goViewNegro), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    private let buttonRojo: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Rojo", for: .normal)
        btn.addTarget(self, action: #selector(goViewRojo), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    private let buttonAzul: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Blanco", for: .normal)
        btn.addTarget(self, action: #selector(goViewAzul), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    
    var delegate : ViewNavegacionProtocol?
    override init (frame : CGRect) {
        super.init(frame : frame)
        backgroundColor = .purple
        addViews()
        autoLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addViews(){
        addSubview(buttonNegro)
        addSubview(buttonRojo)
        addSubview(buttonAzul)
    }
    func autoLayout(){
        NSLayoutConstraint.activate([
            buttonNegro.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonNegro.topAnchor.constraint(equalTo: topAnchor, constant: 300),
            buttonNegro.widthAnchor.constraint(equalToConstant: 100),
            
            buttonRojo.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonRojo.topAnchor.constraint(equalTo: buttonNegro.bottomAnchor, constant: 10),
            buttonRojo.widthAnchor.constraint(equalToConstant: 100),
            
            buttonAzul.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonAzul.topAnchor.constraint(equalTo: buttonRojo.bottomAnchor, constant: 10),
            buttonAzul.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    //MARK: obcj funtions
    
    @objc func goViewNegro(){
        print("al negro")
        delegate?.goNegro()
    }
    @objc func goViewRojo(){
        print("al rojo")
        delegate?.goRojo()
    }
    @objc func goViewAzul(){
        print("al azul")
        delegate?.goAzul()
    }
}
