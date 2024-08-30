//
//  POIntermedio.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 29/08/24.
//

import UIKit

protocol FabricaAutosProtocol: AnyObject {
    func goNextViewController(titleButton: String)
}

class FabricaAutos: UIView {
    
     var btnTsuru: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Tsuru", for: .normal)
        btn.addTarget(self, action: #selector(goViewTsuru), for: .touchUpInside)
        btn.tag = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var btnMazda: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Mazda", for: .normal)
        btn.addTarget(self, action: #selector(goViewMazda), for: .touchUpInside)
        btn.tag = 2
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var btnSpark: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Spark", for: .normal)
        btn.addTarget(self, action: #selector(goViewSpark), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tag = 3
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    var delegate : FabricaAutosProtocol?
    override init (frame : CGRect) {
        super.init(frame : frame)
        //backgroundColor = .purple
        addViews()
        autoLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addViews(){
        addSubview(btnTsuru)
        addSubview(btnMazda)
        addSubview(btnSpark)
    }
    func autoLayout(){
        NSLayoutConstraint.activate([
            btnTsuru.centerXAnchor.constraint(equalTo: centerXAnchor),
            btnTsuru.topAnchor.constraint(equalTo: topAnchor, constant: 300),
            btnTsuru.widthAnchor.constraint(equalToConstant: 100),
            
            btnMazda.centerXAnchor.constraint(equalTo: centerXAnchor),
            btnMazda.topAnchor.constraint(equalTo: btnTsuru.bottomAnchor, constant: 10),
            btnMazda.widthAnchor.constraint(equalToConstant: 100),
            
            btnSpark.centerXAnchor.constraint(equalTo: centerXAnchor),
            btnSpark.topAnchor.constraint(equalTo: btnMazda.bottomAnchor, constant: 10),
            btnSpark.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    //MARK: obcj funtions
    
    @objc func goViewTsuru(){
        let title = btnTsuru.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
    @objc func goViewMazda(){
        let title = btnMazda.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
    @objc func goViewSpark(){
        let title = btnSpark.title(for: .normal)
        delegate?.goNextViewController(titleButton: title!)
    }
}
