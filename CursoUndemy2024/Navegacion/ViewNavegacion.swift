//
//  ViewNavegacion.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 21/08/24.
//

import UIKit

class ViewNavegacion: UIView {
    
    
    private let buttonNegro: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Verde", for: .normal)
        //btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    private let buttonRojo: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Verde", for: .normal)
        //btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    private let buttonAzul: UIButton = {
        let btn : UIButton = UIButton(type: .system)
        btn.setTitle("Verde", for: .normal)
        //btn.addTarget(self, action: #selector(pushNav), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .lightGray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        return btn
    }()
    
     
    override init (frame : CGRect) {
        super.init(frame : frame)
        backgroundColor = .purple
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
