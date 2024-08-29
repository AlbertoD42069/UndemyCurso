//
//  AutoCreado.swift
//  CursoUndemy2024
//
//  Created by Jesus Alberto Diaz Dominguez on 29/08/24.
//

import Foundation
import UIKit

class AutoCreado: UIView {
    
    let titleLabels: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    private let listoLabel: UILabel = {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Listo"
        return label
    }()
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        addComponentes()
        setupNavegation()
        setupNavegation()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func addComponentes(){
        addSubview(listoLabel)
        addSubview(titleLabels)
    }
    func setupNavegation(){
        
        if let titleFinish = titleLabels.text {
            switch titleFinish {
            case "Negro":
                backgroundColor = .black
                listoLabel.textColor = .white
                titleLabels.textColor = .white
            case "Rojo":
                backgroundColor = .red
            case "Blanco":
                backgroundColor = .white
            default:
                print("error")
            }
        }
    }
    func setupAutoLayout(){
        
        NSLayoutConstraint.activate([
         titleLabels.topAnchor.constraint(equalTo: topAnchor, constant: 50),
         titleLabels.centerXAnchor.constraint(equalTo: centerXAnchor),

         listoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
         listoLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
         ])
    }
}
