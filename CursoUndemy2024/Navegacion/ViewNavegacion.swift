//
//  ViewNavegacion.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 21/08/24.
//

import UIKit

protocol ViewNavegacionProtocol: AnyObject {
    func goNextViewController(titleButton: String)

   
}

class ViewNavegacion: UIView {
    
     var buttonNegro: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Negro", for: .normal)
        btn.addTarget(self, action: #selector(goViewNegro), for: .touchUpInside)
        btn.tag = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var buttonRojo: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Rojo", for: .normal)
        btn.addTarget(self, action: #selector(goViewRojo), for: .touchUpInside)
        btn.tag = 2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var buttonBlanco: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Blanco", for: .normal)
        btn.addTarget(self, action: #selector(goViewBlanco), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 3
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
        addSubview(buttonBlanco)
    }
    func autoLayout(){
        NSLayoutConstraint.activate([
            buttonNegro.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonNegro.topAnchor.constraint(equalTo: topAnchor, constant: 300),
            buttonNegro.widthAnchor.constraint(equalToConstant: 100),
            
            buttonRojo.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonRojo.topAnchor.constraint(equalTo: buttonNegro.bottomAnchor, constant: 10),
            buttonRojo.widthAnchor.constraint(equalToConstant: 100),
            
            buttonBlanco.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonBlanco.topAnchor.constraint(equalTo: buttonRojo.bottomAnchor, constant: 10),
            buttonBlanco.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    //MARK: obcj funtions
    
    @objc func goViewNegro(){
        let title = buttonNegro.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
    @objc func goViewRojo(){
        let title = buttonRojo.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
    @objc func goViewBlanco(){
        let title = buttonBlanco.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
}
